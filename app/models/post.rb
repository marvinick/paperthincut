class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_attachment_content_type :image,
content_type:  /^image\/(png|gif|jpeg)/,
message: "Only images allowed"

validates_attachment_content_type :resource,
content_type: ['application/pdf'],
message: "Only pdfs allowed"

validates :image, attachment_presence: true
validates :resource, attachment_presence: true

  mount_uploader :image, ImageUploader
end