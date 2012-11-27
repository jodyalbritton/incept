class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :user_id
      t.integer :school_id
      t.date :enrolled_from
      t.date :enrolled_to
      t.string :major
      t.string :course_of_study
      t.integer :credit_hours

      t.timestamps
    end
  end
end
