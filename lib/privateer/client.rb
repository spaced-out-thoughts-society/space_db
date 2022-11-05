# frozen_string_literal: true

require 'json'
require 'net/http'

module Privateer
  class Client
    def initialize
      @space_objects = []
      @max_data_size = 4_000
    end

    def query_and_save_all_data
      num = 0
      finished = false

      until finished
        finished = !data_query(num)
        num += 1
      end

      puts "Inserting #{space_objects.size} space objects"
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      SpaceObject.insert_all space_objects
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      puts "Inserted in #{(ending - starting).round(2)} seconds"
    end

    private

    attr_accessor :space_objects
    attr_reader :max_data_size

    def data_query(num)
      source = "https://preview.privateer-dev.com/data/data-#{num}.json"
      resp = Net::HTTP.get_response(URI.parse(source))
      data = resp.body
      results = JSON.parse(data)

      results.each do |result|
        space_objects << SpaceObject.create_hash_from_json(result)
      end

      results.size == max_data_size
    end
  end
end
