class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :address
      t.string :age
      t.references :departments, foreign_key: true

      t.timestamps
    end
  end
end
