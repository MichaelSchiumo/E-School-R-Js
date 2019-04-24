class User < ApplicationRecord
    has_secure_password

	# Verify that email field is not blank and that it doesn't already exist in the db (prevents duplicates):
    validates :email, presence: true, uniqueness: true
    
    has_many :enrollments
    has_many :courses, through: :enrollments
    has_many :discussion_forums, through: :courses
    has_many :assigments, through: :courses

end
