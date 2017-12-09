class Course < ActiveRecord::Base
  uniquify :course_token, :length => 6, :chars => 0..9
  
  belongs_to :user, -> { where "role = 1"}
  has_many :users, -> { where "role = 0"}


  def get_course_from_token (token)
    user.course_tokens
  end
end
