class Player < ActiveRecord::Base
	has_one :country
  has_secure_password
end