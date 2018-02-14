# README


<!--
<% @templates.each do |each_story|  %>
  <%= link_to each_story.category, category_path(each_story.category) %> <br>
<% end %> -->



MODELS:

User
  has_many :templates, through: :author_templates, source: :author
  has_many :author_templates, foreign_key: :author_id, class_name: "Template"

  has_many :completed_stories, through: :player_stories, source: :player
  has_many :player_stories, foreign_key: :player_id

Template
  belongs_to :author, foreign_key: "author_id", class_name: "User"
  has_many :completed_stories

CompletedStory
  belongs_to :player, foreign_key: "player_id", class_name: "User"
  belongs_to :template


User table

Template table
author_id :integer
player_id :integer

CompletedStory
player_id :integer
template_id :integer
