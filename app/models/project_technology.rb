class ProjectTechnology < ActiveRecord::Base
  belongs_to :technology
  belongs_to :project
end