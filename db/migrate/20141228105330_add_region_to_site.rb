class AddRegionToSite < ActiveRecord::Migration
  def change
    add_column :sites, :region_nom, :string
  end
end
