class CourseSerializer < ActiveModel::Serializer
  attributes :id,:name,:teacher
  belongs_to :student
  belongs_to :teacher
end
