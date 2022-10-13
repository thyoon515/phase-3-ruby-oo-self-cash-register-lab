require 'pry'
class CashRegister

    attr_accessor :total, :discount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
    end

    def apply_discount
        self.total = self.total - discount / 100.0 * self.total
        puts "After the discount, the total comes to $#{self.total}."
    end
end

