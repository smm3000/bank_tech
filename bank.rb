class Bank

    def initialize 
        @balance = 0
    end 

    def deposit(amount)
        @balance =+ amount 
    end

    def show_balance
        return @balance
    end
end 