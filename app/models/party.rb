class Party < ActiveRecord::Base
  belongs_to :table
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders
end
