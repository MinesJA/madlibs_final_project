class CreateTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :templates do |t|
      t.string :title
      t.text :story_template
      t.string :category
      t.integer :avg_rating
      t.string :temp_pic
      t.integer :user_id



      t.timestamps
    end
  end
end
