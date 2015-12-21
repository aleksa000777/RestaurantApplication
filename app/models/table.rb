class Table < ActiveRecord::Base
  has_one :party
  has_many :orders, through: :parties
  has_one :server
end
