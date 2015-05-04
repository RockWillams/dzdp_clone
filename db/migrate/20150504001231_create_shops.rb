class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :title
      t.text :comment
      t.string :rating

      t.timestamps
    end
  end
end
