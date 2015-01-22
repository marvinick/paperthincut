class Log < ActiveRecord::Base
  validates :event, presence: true
  validates :description, presence: true
end