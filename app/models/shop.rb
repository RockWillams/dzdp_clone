class Shop < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  
  has_attached_file :image, styles: { medium: "400x600#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  # Required for Geocoder to fetch geo codes of a full address
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end

