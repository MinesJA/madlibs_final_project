class User < ApplicationRecord
  has_many :completed_stories
  has_many :templates, through: :completed_stories

  has_secure_password


end
