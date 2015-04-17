class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :email
      t.string :phone1
      t.string :phone2
      t.references :home_teachee, index: true

      t.timestamps
    end
  end
end
