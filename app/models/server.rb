class Server < ActiveRecord::Base
  has_many :tables
  belongs_to :admin
end
