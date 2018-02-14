class Template < ApplicationRecord
  belongs_to :user
  has_many :completed_stories
  validates :title, :story_template, presence: true
  validates :title, :story_template, uniqueness: true
  validate :select_key_words

######## VALIDATOR METHOD ##############

  def select_key_words
    if story_template.count("#") < 2
      errors.add(:story_template, "Must select at least one key word by adding a hashtag to either end of the selected word. Ex. '#keyword#'.")
    end
  end

#########################################


  def find_key_words
    hash = {}
    key_words = self.story_template.scan(/#(.*?)#/).flatten
    #returns array of all key words stripped of "#". ex: "adjective_1"

    key_words.each do |key|
      hash[key] = nil
    end
    hash
  end

  def self.categories
    categories = []

    Template.all.each do |template|
      categories << template.category
    end
    categories.uniq
  end



end
