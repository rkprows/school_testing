class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :enrollment
      t.string :level
      t.string :location

      t.timestamps null: false
    end
  end
end
