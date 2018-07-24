class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity 
    quantity.times do 
      @items << title 
    end 
    self.total = self.total - self.last_transaction 
  end 
  
  def apply_discount 
    if discount != 0 
      self.total = self.total * (100.0 - discount.to_f)
  end 
  
  
end 