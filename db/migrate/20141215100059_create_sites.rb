class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :nom
      t.string :categorie
      t.string :adresse
      t.text :description
      t.string :latitude
      t.string :longitude
      t.string :tel
      t.string :web
      t.integer :tarif
      t.integer :reduction
      t.integer :groupe
      t.integer :audioguide
      t.integer :guide
      t.integer :avis
      t.timestamps
    end
  end
end
