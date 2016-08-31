class Feed < ApplicationRecord
    belongs_to :user
    includes Bootsy::Container
    
    validates :title, :presence => "true"
    validates :context, :presence => "true"
    validates :prompt, :presence => "true"
end
