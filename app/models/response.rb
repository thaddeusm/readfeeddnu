class Response < ApplicationRecord
  belongs_to :commentable, :polymorphic => true
  has_many :responses, :as => :commentable
  includes Bootsy::Container
  belongs_to :user
  
  def feed
    return @feed if defined?(@feed)
    @feed = commentable.is_a?(Feed) ? commentable : commentable.feed
  end
end
