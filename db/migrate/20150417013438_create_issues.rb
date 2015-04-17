class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :description
      t.references :home_teachee, index: true

      t.timestamps
    end
  end
end
