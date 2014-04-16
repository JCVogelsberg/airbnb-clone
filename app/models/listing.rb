class Listing < ActiveRecord::Base
  validates :address, :presence => true
  validates :neighborhood, :presence => true
  validates :city, :presence => true
  validates :price, :presence => true
  validates :home_type, :presence => true
  validates :description, :presence => true
 # validates :user_id, :presence => true

  belongs_to :user
end



