class Bank

    attr_accessor :balance

    def initialize
        @balance = 0
    end 

    def deposit(amount)
        @balance += amount 
    end

    def withdraw(amount)
        @balance -= amount 
    end 

    def show_balance
        @balance
    end


end 