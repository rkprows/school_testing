class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :subject
      t.string :teacher
      t.integer :unit
      t.belongs_to :school

      t.timestamps null: false
    end
  end
end
