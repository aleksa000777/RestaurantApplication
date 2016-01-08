class Party < ActiveRecord::Base
  belongs_to :table
  belongs_to :server
  has_many :orders
  has_many :foods, through: :orders


  def total
    total=0;
    self.foods.each do |food|
      total+=food.price
    end
    total
  end
end
