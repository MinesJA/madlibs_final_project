class User < ApplicationRecord
  has_many :templates
  has_many :completed_stories
  has_secure_password

end
