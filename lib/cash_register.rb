
class CashRegister
  
  attr_accessor :total, :discount, :price, :items, :last_item
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end
  
 
  def add_item(title, price, quantity = 1)
    @last_item = price*quantity
    @total += price*quantity
    if quantity > 1 
      i = 0 
      while i < quantity
        @items << title
        i += 1 
      end
    else
      @items << title
    end
    
    @price = @total
    
  end
  
  def apply_discount()
    if @discount > 0 
      @take_off = (price * discount)/100
      @total -= @take_off
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction()
    @total -= @last_item
  end
  
end
