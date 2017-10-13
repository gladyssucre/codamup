class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def set_total_price
    self.total = self.price*event.price
  end
  
end
