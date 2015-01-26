class Appointment < ActiveRecord::Base
  validates :chef, presence: true
  validates :background, presence: true
  mount_uploader :image, ImageUploader
end