class Player < ActiveRecord::Base
	has_many :countries
  has_secure_password
end