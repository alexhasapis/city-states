class Countryresource < ActiveRecord::Base
  belongs_to :country
  belongs_to :resource
end
