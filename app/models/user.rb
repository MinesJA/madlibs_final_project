class User < ApplicationRecord
  has_many :templates
  has_many :completed_stories


  # has_many :author_templates, foreign_key: :author_id, class_name: "Template"
  # has_many :templates, through: :author_templates, source: :author
  # has_many :completed_stories, through: :player_stories, source: :player
  # has_many :player_stories, foreign_key: :player_id, class_name: "CompletedStory"

  # has_secure_password
end
