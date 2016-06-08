class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :content, presence: true, length: {minimum: 5, maximum: 25}
  validates :post, presence: true
  validates :user, presence: true
  scope :persisted, -> { where "id IS NOT NULL" }
end
