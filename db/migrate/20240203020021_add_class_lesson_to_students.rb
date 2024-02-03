class AddClassLessonToStudents < ActiveRecord::Migration[7.1]
  def change
    add_reference :students, :class_lesson, null: true, foreign_key: true
  end
end
