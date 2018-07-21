class User < ApplicationRecord
  has_many :templates
  has_many :completed_stories
  has_secure_password

  validates :name, uniqueness: true
  validates :name, presence: true

  has_attached_file :avatar, styles: {
    medium: "300x300>",
    thumb: "100x100>"
  }
      
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


end
