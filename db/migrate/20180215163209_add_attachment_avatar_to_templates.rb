class AddAttachmentAvatarToTemplates < ActiveRecord::Migration[4.2]
  def self.up
    change_table :templates do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :templates, :avatar
  end
end
