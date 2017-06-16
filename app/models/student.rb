class Student < ApplicationRecord
  has_many :learnings
  has_many :courses,through: :learnings
end