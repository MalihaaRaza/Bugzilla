class Develop < ApplicationRecord
  belongs_to :User
  belongs_to :project
  has_many :bugs
end
