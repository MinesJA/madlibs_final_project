class Template < ApplicationRecord
  belongs_to :user
  has_many :completed_stories
  validates :title, :story_template, presence: true
  validates :title, :story_template, uniqueness: true
  validate :select_key_words

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


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


  def calculate_average_rating
    array_ratings = self.completed_stories.map {|completed_story| completed_story.temp_rating}

    if !array_ratings.first
      return nil
    else
      sum_ratings = array_ratings.inject(0){|sum,x| sum + x }
      sum_ratings/array_ratings.count
    end
  end

  def self.random_template
    if self.count == 1
      self.first
    else
      num = Template.count - 1
      self.all[rand(0..num)]
    end
  end

  def self.rated_templates
    self.all.select do |template|
      template.avg_rating != nil
    end
  end

  def self.most_popular_template
    self.rated_templates.sort_by do |template|
      template.avg_rating
    end.last
  end


end
