class Template < ApplicationRecord
  belongs_to :user
  has_many :completed_stories

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
