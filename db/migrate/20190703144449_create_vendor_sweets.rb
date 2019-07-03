class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.references :sweet, foreign_key: true
      t.references :vendor, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
