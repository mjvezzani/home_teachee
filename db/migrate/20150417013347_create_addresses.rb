class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_number
      t.string :city
      t.string :state
      t.string :zipcode
      t.references :contact_info, index: true

      t.timestamps
    end
  end
end
