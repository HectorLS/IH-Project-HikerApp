class Marker < ActiveRecord::Base

 belongs_to :route

  extend Dragonfly::Model
    dragonfly_accessor :fire_stations
    dragonfly_accessor :police_stations
    dragonfly_accessor :ranger_stations
    dragonfly_accessor :danger_animal
    dragonfly_accessor :picnic_areas
    dragonfly_accessor :shelters
    dragonfly_accessor :water_source


  extend Dragonfly::Model::Validations
                          
    # Check the file extension
    validates_property :ext, of: :fire_stations, as: 'kml'
    validates_property :ext, of: :police_stations, as: 'kml'
    validates_property :ext, of: :ranger_stations, as: 'kml'
    validates_property :ext, of: :danger_animal, as: 'kml'
    validates_property :ext, of: :picnic_areas, as: 'kml'
    validates_property :ext, of: :shelters, as: 'kml'
    validates_property :ext, of: :water_source, as: 'kml'

end
