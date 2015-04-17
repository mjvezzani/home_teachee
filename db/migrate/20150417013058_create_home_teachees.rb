class CreateHomeTeachees < ActiveRecord::Migration
  def change
    create_table :home_teachees do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
