class Student < ApplicationRecord
  has_many :subject_students
  has_many :subjects, through: :subject_students
  accepts_nested_attributes_for :subjects, allow_destroy: true
  #after_create :save_subjects

  	#Custom Setter
	def subjects=(value)
		@subjects = value
	end

	def save_subjects

		@subjects.each do |subject_id|
			SubjectStudent.create(subject_id: subject_id, student: article.id)
		end
	end

end
