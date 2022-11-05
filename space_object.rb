class SpaceObject
    def initialize(
        area_to_mass:,
        data_source_name:,
        orbit_type:,
        namespace:,
        inserted_at:,
        object_type:,
        status:
    )

        @area_to_mass = area_to_mass
        @data_source_name = data_source_name
        @orbit_type = orbit_type
        @namespace = namespace
        @inserted_at = inserted_at
        @object_type = object_type
        @status = status
    end
    
    def self.from_json(json)
        new(
            area_to_mass: json['AreaToMass'],
            data_source_name: json['DataSourceName'],
            orbit_type: json['OrbitType'],
            namespace: json['Namespace'],
            inserted_at: json['Inserted'],
            object_type: json['ObjectType'],
            status: json['Status']
        )
    end
end