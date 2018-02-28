class CreateClassroomTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :classroom_teachers do |t|
      t.references :classroom, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
