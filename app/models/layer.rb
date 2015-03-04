class Layer < ActiveRecord::Base
  belongs_to :route

  extend Dragonfly::Model
  	dragonfly_accessor :gpx
  	dragonfly_accessor :kml


  extend Dragonfly::Model::Validations
    # validates_presence_of :gpx
    # validates_presence_of :kml
   
    # Check the file extension
    validates_property :ext, of: :gpx, as: 'gpx'
    validates_property :ext, of: :kml, as: 'kml'

    
end
