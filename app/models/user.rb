class User < ApplicationRecord
  has_many :templates
  has_many :completed_stories
  has_secure_password

  validates :name, uniqueness: true
  validates :name, presence: true
  

end
