class Template < ApplicationRecord
  has_many :completed_stories
  has_many :users, through: :completed_stories


  def self.find_key_words(story_template)
    hash = {}
    key_words = story_template.scan(/#(.*?)#/).flatten
    #returns array of all key words stripped of "#". ex: "adjective_1"

    key_words.each do |key|
      hash[key] = nil
    end
    hash
  end



end
