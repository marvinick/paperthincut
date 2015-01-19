class Log < ActiveRecord::Base
  validates :event, presence: true
end