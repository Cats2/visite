class CreateVoyages < ActiveRecord::Migration
  def change
    create_table :voyages do |t|
      t.string :nom

      t.timestamps
    end
  end
end
