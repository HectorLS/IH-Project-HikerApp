class Layer < ActiveRecord::Base
	dragonfly_accessor :gpx
	dragonfly_accessor :kml
end
