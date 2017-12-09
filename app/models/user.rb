class User < ActiveRecord::Base
  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  
  has_many :courses
  has_many :presentation_blocks
  has_many :presentations
  
  serialize :course_tokens, Array
  
  # returns the hash digest of the given plain-text string
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  # returns a random token
  def self.new_token
    SecureRandom.urlsafe_base64
  end
  
  # remember a user in the database for use in persistant sessions
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # returns true if the given token matches the digest
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  
  # forgets a user
  def forget
    self.remember_token = nil
    update_attribute(:remember_digest, nil)
  end
  
  # returns true if user is a professor, false otherwise
  def is_professor?
    return (role == 1)
  end

=begin 
  def search(try_token)
    @searched_course = Course.find_by course_token: try_token
  end
=end

=begin  
  def add_course(try_token)
    if(search(try_token) != nil) then
      current_user.course_tokens.push(try_token)
      @searched_course
    else
      flash.now[:danger] = "Could not find course!"
    end
  end
=end
end
