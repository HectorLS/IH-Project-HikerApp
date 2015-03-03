class Route < ActiveRecord::Base
  has_many :layers
	has_many :rings
	has_many :trails, through: :rings

	validates :name, 		presence: true, length: { maximum: 30 }
	validates :city, 		presence: true, length: { maximum: 30 }
	validates :country, presence: true, length: { maximum: 30 }
	validates :description, presence: true, length: { maximum: 600 }

  def self.search(search)
    search_condition = "%" + search + "%"
    where('name LIKE ?', search_condition)
  end


end
