class Team < ActiveRecord::Base
	validates :country, presence: true, uniqueness: true, uniqueness: {case_sensitive: false}, format: {with: /\A[A-Za-z ]+\z/, message: "ERROR: Only letters and spaces allowed in Team Name"}
	validates :coach, presence: true, uniqueness: true, uniqueness: {case_sensitive: false}
	validates :flag_image, presence: true, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i, message: "ERROR: Invalid Flag URL"}
	validates :uniform_image, presence: true, format: {with: /http(s)?:\/\/[A-Za-z0-9+&@#%?=~_|\.|\-|\/]+/i, message: "ERROR: Invalid Uniform URL"}
	validates_length_of :description, minimum: 15, maximum: 200
end
