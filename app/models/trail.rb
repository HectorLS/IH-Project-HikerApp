class Trail < ActiveRecord::Base
	has_many :rings
	has_many :routes, through: :rings

	validates :name, 		presence: true, length: { maximum: 30 }
end
