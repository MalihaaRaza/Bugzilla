class Test < ApplicationRecord
  belongs_to :Project
  belongs_to :User
  has_many :bugs
end
