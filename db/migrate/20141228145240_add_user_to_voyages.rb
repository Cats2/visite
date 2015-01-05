class AddUserToVoyages < ActiveRecord::Migration
  def change
    add_column :voyages, :user_nom, :string
  end
end
