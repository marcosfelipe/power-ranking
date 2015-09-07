class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :team, index: true, foreign_key: true
      t.text :description
      t.date :date
      t.string :state
      t.integer :points

      t.timestamps null: false
    end
  end
end
