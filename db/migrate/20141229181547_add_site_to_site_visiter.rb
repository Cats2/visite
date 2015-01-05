class AddSiteToSiteVisiter < ActiveRecord::Migration
  def change
    add_column :site_a_visiters, :site_nom, :string
  end
end
