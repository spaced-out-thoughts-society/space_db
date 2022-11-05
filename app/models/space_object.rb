# frozen_string_literal: true

class SpaceObject < ApplicationRecord
  def self.create_hash_from_json(json)
    {
      cart_vel_y: json['CartVelY'],
      cart_vel_z: json['CartVelZ'],
      cart_vel_x: json['CartVelX'],
      arg_p: json['ArgP'],
      norad_id: json['NoradId'],
      data_source_id: json['dataSourceId'],
      mean_anom: json['MeanAnom'],
      area_to_mass: json['AreaToMass'],
      cart_pos_x: json['CartPosX'],
      cart_pos_y: json['CartPosY'],
      cart_pos_z: json['CartPosZ'],
      equ_lm: json['EquLm'],
      equ_hy: json['EquHy'],
      equ_hx: json['EquHx'],
      epoch_fmt: json['EpochFmt'],
      ecc: json['Ecc'],
      sma: json['SMA'],
      epoch: json['Epoch'],
      data_source_name: json['DataSourceName'],
      raan: json['RAAN'],
      orbit_type: json['OrbitType'],
      equ_ey: json['EquEy'],
      equ_ex: json['EquEx'],
      inc: json['Inc'],
      namespace: json['Namespace'],
      inserted: json['Inserted'],
      object_type: json['ObjectType'],
      status: json['Status']
    }
  end
end
