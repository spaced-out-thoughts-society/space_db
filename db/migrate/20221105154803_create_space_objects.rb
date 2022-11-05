# frozen_string_literal: true

class CreateSpaceObjects < ActiveRecord::Migration[7.0]
  def change
    create_table :space_objects do |t|
      t.decimal :cart_vel_y
      t.decimal :cart_vel_z
      t.decimal :cart_vel_x
      t.decimal :arg_p
      t.integer :norad_id
      t.string :data_source_id
      t.decimal :mean_anom
      t.decimal :area_to_mass
      t.decimal :cart_pos_x
      t.decimal :cart_pos_y
      t.decimal :cart_pos_z
      t.decimal :equ_lm
      t.decimal :equ_hy
      t.decimal :equ_hx
      t.datetime :epoch_fmt
      t.decimal :ecc
      t.decimal :sma
      t.decimal :epoch
      t.string :data_source_name
      t.decimal :raan
      t.string :orbit_type
      t.decimal :equ_ey
      t.decimal :equ_ex
      t.decimal :inc
      t.string :namespace
      t.string :inserted
      t.string :object_type
      t.string :status

      t.timestamps
    end
  end
end
