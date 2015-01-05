class CreateSiteAVisiters < ActiveRecord::Migration
  def change
    create_table :site_a_visiters do |t|

      t.timestamps
    end
  end
end
