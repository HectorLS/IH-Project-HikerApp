class Ring < ActiveRecord::Base
	belongs_to :route
	belongs_to :trail
end
