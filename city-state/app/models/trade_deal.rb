class TradeDeal < ActiveRecord::Base
  belongs_to :player
  belongs_to :countryresource
end
