require 'terminal-table'

class Bank

    attr_accessor :balance, :transactions

    def initialize
        @balance = 0
        @transactions = []
    end 

    def deposit(amount, date)
        @balance += amount 
        @transactions << [date, amount, @balance]

    end

    def withdraw(amount, date)
        @balance -= amount 
        @transactions << [date, amount, @balance]
    end 

    def show_balance
        @balance
    end

    def print_statement
        table = Terminal::Table.new do |t|
            t.headings = ['Date', 'Amount', 'Balance']
            t.rows = @transactions.reverse
        end
        print table
    end 

end 