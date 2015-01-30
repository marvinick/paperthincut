class Respond < ActiveRecord::Base
  validates :body, presence: true
end