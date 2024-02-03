class ChangeColumnNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :students, :class_lesson_id, false
    change_column_null :teachers, :class_lesson_id, false
  end
end
