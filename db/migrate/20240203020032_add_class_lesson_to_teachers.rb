class AddClassLessonToTeachers < ActiveRecord::Migration[7.1]
  def change
    add_reference :teachers, :class_lesson, null: true, foreign_key: true
  end
end
