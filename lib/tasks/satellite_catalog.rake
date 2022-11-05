namespace :satellite_catalog do
    desc "Pulls the latest objects, saving to db"
    task pull_space_objects: :environment do
      api = SatelliteCatalog::Client.new
      api.query_and_save_all_data
    end
  end
  