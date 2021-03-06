class Place < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all
  has_many :photos, dependent:  :delete_all



  geocoded_by :address
  after_validation :geocode


  validates :name, :address, :description,  presence: true
  validates :name, length: {minimum: 4 }
end
