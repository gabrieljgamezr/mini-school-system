class RemoveClassIdFromTeachers < ActiveRecord::Migration[7.1]
  def change
    remove_column :teachers, :class_id, :integer
  end
end
