class Good < ActiveRecord::Base
  has_many :good_distributors
  has_many :distributors, through: :good_distributors

  validates :name, presence: true
end