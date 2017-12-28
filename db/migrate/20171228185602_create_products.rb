class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :description_title
      t.string :category
      t.string :subcategory
      t.integer :price
      t.timestamps
    end

    create_table :zinc_remote_infos do |t|
      t.belongs_to :product, index: true
      t.string :category
      t.string :subcategory
      t.string :remote_id
      t.timestamps
    end
  end
end
