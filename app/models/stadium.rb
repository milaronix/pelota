class Stadium < ActiveRecord::Base
	has_many :matches
	
	validates :name, presence: true, uniqueness: true
      validates :city, presence: true, uniqueness: true
      validates :d_construct, presence: true
      validates :capacity, presence: true, numericality: {only_integer: true}, numericality: {greater_than: 0}
      validates :photo_url, presence: true, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i, message: "ERROR: Imagen invalida"}
end
