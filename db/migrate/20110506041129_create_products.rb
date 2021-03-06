class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :price
      t.float :latitude
      t.float :longitude
      t.string :negotiable
      t.text :description
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
