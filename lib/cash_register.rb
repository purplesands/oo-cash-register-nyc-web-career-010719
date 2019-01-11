class CashRegister
  attr_accessor :total, :last_transaction

  def initialize(discount = 0)
    @total=0
    @discount = discount
    @last_transaction = 0
    @@all = []
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = price * quantity
    @total += (price * quantity)
    quantity.times {@@all << title}
  end

# def add_item(title, price, quantity = 1)
#   @last_transaction = price
#   @total += price * quantity
#   quantity.times {@@all << title}
# end

    #adds title to "items" array
    #adds price to "total" variable
    #keeps track of previous total



    def apply_discount
      if @discount != 0
          @total = @total - (@total * @discount.to_f/100)
          return "After the discount, the total comes to $#{@total.to_i}."
        else
          return "There is no discount to apply."
      end
    end


    #checks if there is a discount intialized and applies it to total price. must convert to float
    #if no discount, puts there is no discount message
    #if discount, puts updated total

  def items
    @@all
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
