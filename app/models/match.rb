class Match < ApplicationRecord
 belongs_to :crush, :class_name => 'User', :foreign_key => :match_to_id
 belongs_to :sender, :class_name => 'User', :foreign_key => :match_from_id
 after_create :check_match

 def check_match
   if self.crush.crushes.find_by(match_to_id: self.sender.id).present?
     self.crush.notifications.create(text: "Your crush has a crush on you <3", linkable_id: self.sender.id, linkable_type: "User")
   end
 end
end
