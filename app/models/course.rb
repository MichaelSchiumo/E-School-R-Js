class Course < ApplicationRecord
    has_many :enrollments
    has_many :users, through: :enrollments
    has_many :assignments
    has_many :discussion_forums
end

