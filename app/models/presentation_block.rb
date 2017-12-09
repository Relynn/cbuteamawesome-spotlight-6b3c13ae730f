class PresentationBlock < ActiveRecord::Base
  belongs_to :user, -> { where "role = 0"}
  has_many :presentations, dependent: :destroy
  
#  def self.create_block_sections(num)
#    num.times do
#      PresentationBlock.presentations.build
#    end
#  end
end
