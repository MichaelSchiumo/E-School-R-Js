class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :user,  serializer: AssignmentUserSerializer
  belongs_to :course
end
