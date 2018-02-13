class Template < ApplicationRecord
  has_many :completed_stories
  has_many :users, through: :completed_stories
  belongs_to :user


end
