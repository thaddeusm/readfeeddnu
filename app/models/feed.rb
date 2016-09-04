class Feed < ApplicationRecord
    belongs_to :user
    has_many :writings, dependent: :destroy
    has_many :responses, :as => :commentable
    includes Bootsy::Container
    
    validates :title, :presence => "true"
    validates :context, :presence => "true"
    validates :prompt, :presence => "true"
end
