class Travelpost < ActiveRecord::Base
  attr_accessible :content, :destination
  belongs_to :user

  validates :content, presence: true,  length: {maximum: 140}
  validates :user_id, presence: true

  default_scope order: 'travelposts.created_at DESC'

end
