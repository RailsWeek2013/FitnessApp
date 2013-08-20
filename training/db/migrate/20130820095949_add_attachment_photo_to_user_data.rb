 class AddAttachmentPhotoToUserData < ActiveRecord::Migration
  def self.up
    change_table :user_data do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :user_data, :photo
  end
end


=begin 
  
class AddAttachmentPhotoToUserData < ActiveRecord::Migration
  def self.up
    add_attachment :user_data, :photo
  end

  def self.down
    remove_attachment :user_data, :photo
  end
end
=end