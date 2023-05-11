class Bug < ApplicationRecord
  belongs_to :Project, :foreign_key => 'project_id'
  belongs_to :test
  belongs_to :develop
end
