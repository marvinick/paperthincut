class Item < ActiveRecord::Base
  belongs_to :good
  belongs_to :basket
  belongs_to :request
end
