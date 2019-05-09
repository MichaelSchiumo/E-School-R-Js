class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :user  serializer: AssignmentUserSerializer
end
