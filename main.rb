require 'json'
require 'net/http'
require './space_object.rb'

class PrivateerAPI
    def initialize
        @space_objects = []
        @max_data_size = 4_000

        query_all_data
    end

    def all_space_objects
        space_objects
    end

    private

    attr_accessor :space_objects
    attr_reader :max_data_size

    def query_all_data
        num = 0
        loop do
            if data_query(num)
                num += 1
            else
                return
            end
        end
    end
    
    def data_query(num)
        source = "https://preview.privateer-dev.com/data/data-#{num}.json"
        resp = Net::HTTP.get_response(URI.parse(source))
        data = resp.body
        results = JSON.parse(data)
    
        results.each do |result|
            space_objects << SpaceObject.from_json(result)
        end

        return results.size == max_data_size
    end
end

api = PrivateerAPI.new

pp api.all_space_objects
pp api.all_space_objects.size
