
class CashRegister

    attr_accessor :total, :discount, :item, :last_transaction


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @item = []
    end

    def add_item( title, price, quantity=1)
        quantity.times do 
            @item << title
        end
        @total += price * quantity
        @last_transaction = price * quantity
    end

    def apply_discount
       @total = @total * 0.8
       @total.to_i

       if discount == 0
            return "There is no discount to apply."
       end
       return "After the discount, the total comes to $#{@total.to_i}."
    end

    def items
        return item
    end

    def void_last_transaction
        @total = @total - @last_transaction
    end

end