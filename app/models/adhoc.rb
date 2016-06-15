class Adhoc < ActiveRecord::Base
  has_many :bids, dependent: :destroy
end
