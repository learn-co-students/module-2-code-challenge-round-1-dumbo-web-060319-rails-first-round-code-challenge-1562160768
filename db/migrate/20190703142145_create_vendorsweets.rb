class CreateVendorsweets < ActiveRecord::Migration[5.2]
  def change
    create_table :vendorsweets do |t|
      t.integer :price
      t.belongs_to :vendor, foreign_key: true
      t.string :sweet_belongs_to

      t.timestamps
    end
  end
end
