class Feed < ApplicationRecord
    belongs_to :user
    has_many :responses, :as => :commentable, dependent: :destroy
    includes Bootsy::Container
    
    validates :title, :presence => "true"
    validates :context, :presence => "true"
    validates :prompt, :presence => "true"
    validates :focus, :presence => "true"
end
