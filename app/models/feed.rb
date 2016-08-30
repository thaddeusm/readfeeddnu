class Feed < ApplicationRecord
    belongs_to :user
    
    validates :title, :presence => "true"
    validates :context, :presence => "true"
    validates :prompt, :presence => "true"
end
