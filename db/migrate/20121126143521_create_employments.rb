class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :user_id
      t.integer :employer_id
      t.date :employed_from
      t.date :employed_to
      t.string :title


      t.timestamps
    end
  end
end
