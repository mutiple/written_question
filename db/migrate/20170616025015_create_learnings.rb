class CreateLearnings < ActiveRecord::Migration[5.0]
  def change
    create_table :learnings do |t|
      t.belongs_to  :course,foreign_key:true
      t.belongs_to  :student,foreign_key:true

      t.timestamps
    end
  end
end
