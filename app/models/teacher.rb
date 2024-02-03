class Teacher < ApplicationRecord

    validates :name, presence: true
    validates :lastname, presence: true
    validates :class_lesson, presence: true

    belongs_to :class_lesson
end
