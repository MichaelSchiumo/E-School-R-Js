class Enrollment < ApplicationRecord
    belongs_to :course
    belongs_to :user

    validates :user_id, presence: true, uniqueness: true
end
