class CreateVendorsweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendorsweets do |t|
      t.integer :price
      t.belongs_to :vendor, foreign_key: true
      t.belongs_to :sweet, foreign_key: true

      t.timestamps
    end
  end
end
