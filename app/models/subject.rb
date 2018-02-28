class Subject < ApplicationRecord
  belongs_to :department, required: false
  has_many :subject_students
  has_many :students, through: :subject_students
end
