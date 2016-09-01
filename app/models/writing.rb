class Writing < ApplicationRecord
  belongs_to :user
  belongs_to :feed
    
  includes Bootsy::Container
end
