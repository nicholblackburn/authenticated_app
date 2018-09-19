class CreateAuthentics < ActiveRecord::Migration[5.2]
  def change
    create_table :authentics do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :price
      t.string :float
      t.string :version
      t.string :author
      t.string :logo
      t.boolean :featured

      t.timestamps
    end
  end
end
