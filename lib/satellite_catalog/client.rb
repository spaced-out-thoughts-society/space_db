# frozen_string_literal: true

require 'csv'
require 'net/http'

module SatelliteCatalog
  class Client
    def query_and_save_all_data
      source = 'https://celestrak.org/pub/satcat.csv'
      resp = Net::HTTP.get_response(URI.parse(source))
      data = resp.body
      results = CSV.parse(data)

      entries = results[1..].map do |sce|
        SatelliteCatalogEntry.create_hash_from_csv(sce)
      end

      puts "Inserting #{entries.size} satellite catalog entries"
      starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      SatelliteCatalogEntry.insert_all entries
      ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      puts "Inserted in #{(ending - starting).round(2)} seconds"
    end
  end
end
