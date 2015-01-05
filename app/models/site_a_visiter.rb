class SiteAVisiter < ActiveRecord::Base
	belongs_to :sites
	belongs_to :voyages
end
