require 'pry'

class CashRegister

attr_accessor :discount, :total, :new_total, :items, :last_transaction_price


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @total = @total + (price * quantity)
  @last_transaction_price = (price * quantity)
  @items << title
  while quantity > 1
    @items << title
    quantity -= 1
  end
  # binding.pry
end

def apply_discount
  @new_total = @total - (@total * (@discount / 100.00))
  if @total == @new_total
    "There is no discount to apply."
  # binding.pry
  else
    @total = @new_total.round
    "After the discount, the total comes to $#{@total}."
  end
end

def void_last_transaction
  @total = @total - @last_transaction_price
end

end

0
