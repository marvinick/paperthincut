class Member < ActiveRecord::Base
  has_many :vendors
  has_secure_password validations: false
end