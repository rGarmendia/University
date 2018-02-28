class Teacher < ApplicationRecord
  belongs_to :department, required: false
  has_many :classroom_teachers
  has_many :clasrooms, through: :classroom_teachers
end
