class Server < ActiveRecord::Base
  has_many :tables
  has_many :orders, through: :tables
  belongs_to :admin
end
