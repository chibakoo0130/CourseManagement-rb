class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses, id: false do |t|
      t.string :course_no, null: false, limit: 4, primary_key: true
      t.string :course_name, null: false, limit: 40
      t.date :the_date, null: false
      t.string :start_time, null: false, limit: 5
      t.string :end_time, null: false, limit: 5
      t.integer :capacity, null: false, default: 10
      t.date :inp_date, null: false
      t.timestamp :upd_date, null: false
    end
  end
end
