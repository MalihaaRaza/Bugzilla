class Project < ApplicationRecord
  has_many :bugs, dependent: :destroy
  has_many :tests, dependent: :destroy
  has_many :developes, dependent: :destroy
  has_many :manages, dependent: :destroy
  has_many :users, through: :tests
  has_many :users, through: :developes
  has_many :users, through: :manages

  #scope :all, -> {Books.all}
end
