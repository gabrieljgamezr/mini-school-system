class ChangeColumnNameLastnameNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :students, :name, false
    change_column_null :students, :lastname, false
    change_column_null :teachers, :name, false
    change_column_null :teachers, :lastname, false
    change_column_null :class_lessons, :name, false
  end
end
