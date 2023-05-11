class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  has_many :tests, dependent: :destroy
  has_many :manages, dependent: :destroy
  has_many :develops, dependent: :destroy
  has_many :projects, through: :Manage
  has_many :projects, through: :Test
  has_many :projects, through: :Develop


  validate :validate_type

  def validate_type
    if user_type != 'Manager' && user_type != 'Developer' && user_type != 'QA'
      errors.add :user_type, 'Enter valid type'
    end
  end
end
