class Table < ActiveRecord::Base
  belongs_to :party
  has_many :orders, through: :parties
  belongs_to :server
end
