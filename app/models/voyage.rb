class Voyage < ActiveRecord::Base

	has_many :site_a_visiter
	belongs_to :users
end
