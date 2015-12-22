class Order < ActiveRecord::Base
  belongs_to :food
  belongs_to :party

  def order_time
    creation = self.created_at
    now = Time.now
    difference = (now - creation)/60
    difference
  end


end
