class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :difficulty
      t.string :time
      t.string :category
      t.integer :participants_total
      t.integer :level_points
      t.date :start_at
      t.date :end_at
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
