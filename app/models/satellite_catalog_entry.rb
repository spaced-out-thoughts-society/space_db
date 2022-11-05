# frozen_string_literal: true

class SatelliteCatalogEntry < ApplicationRecord
  def self.create_hash_from_csv(csv)
    {
      object_name: csv[0],
      object_id: csv[1],
      norad_cat_id: csv[2],
      object_type: csv[3],
      ops_status_code: csv[4],
      owner: csv[5],
      launch_date: csv[6],
      launch_site: csv[7],
      decay_date: csv[8],
      period: csv[9],
      inclination: csv[10],
      apogee: csv[11],
      perigee: csv[12],
      rcs: csv[13],
      data_status_code: csv[14],
      orbit_center: csv[15],
      orbit_type: csv[16]
    }
  end
end
