class AddVoyageToSiteAVisiter < ActiveRecord::Migration
  def change
    add_column :site_a_visiters, :voyage_nom, :string
  end
end
