class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :place 
  belongs_to :caption
end
