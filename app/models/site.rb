class Site < ActiveRecord::Base
	validates :nom, :length=>{ :maximum => 15}
		
	has_many :site_a_visiter
	belongs_to :regions
end
