class ClassLesson < ApplicationRecord

    validates :name, presence: true

    has_many :students, dependent: :restrict_with_exception
    has_many :teachers, dependent: :restrict_with_exception
end
