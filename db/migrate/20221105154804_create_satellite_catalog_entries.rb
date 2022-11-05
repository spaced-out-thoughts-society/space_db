# frozen_string_literal: true

class CreateSatelliteCatalogEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :satellite_catalog_entries do |t|
      t.string :object_name
      t.string :object_id
      t.integer :norad_cat_id
      t.string :object_type
      t.string :ops_status_code
      t.string :owner
      t.datetime :launch_date
      t.string :launch_site
      t.datetime :decay_date
      t.decimal :period
      t.decimal :inclination
      t.decimal :apogee
      t.decimal :perigee
      t.decimal :rcs
      t.string :data_status_code
      t.string :orbit_center
      t.string :orbit_type

      t.timestamps
    end
  end
end
