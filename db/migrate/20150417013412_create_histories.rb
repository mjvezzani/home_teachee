class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :visit_summary
      t.references :home_teachee, index: true

      t.timestamps
    end
  end
end
