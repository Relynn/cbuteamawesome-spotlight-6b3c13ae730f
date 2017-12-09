class Presentation < ActiveRecord::Base
    belongs_to :presentation_block
    
#    def claim_presentation
#      if(self.user_id == nil)
#        self.update_attribute(:user_id, current_user.user_id)
#      end
#    end
end