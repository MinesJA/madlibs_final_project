class AddColumnsRating < ActiveRecord::Migration[5.1]
  def change
    add_column :templates, :avg_rating, :integer
    add_column :templates, :temp_pic, :string
    add_column :completed_stories, :temp_rating, :integer
    add_column :users, :profile_pic, :string
  end
end
