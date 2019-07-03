class CreateVenderSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vender_sweets do |t|
      t.integer :price
      t.belongs_to :sweets, foreign_key: true
      t.belongs_to :vendors, foreign_key: true

      t.timestamps
    end
  end
end
