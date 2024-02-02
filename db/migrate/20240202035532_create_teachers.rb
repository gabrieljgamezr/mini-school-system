class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :lastname
      t.integer :class_id

      t.timestamps
    end
  end
end
