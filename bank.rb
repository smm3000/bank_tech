require 'terminal-table'

class Bank
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << [Time.now.strftime("%d/%m/%Y"), amount, @balance]
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << [Time.now.strftime("%d/%m/%Y"), amount, @balance]
  end

  def show_balance
    @balance
  end

  def print_statement
    table = Terminal::Table.new do |t|
      t.headings = %w[Date Amount Balance]
      t.rows = @transactions.reverse
    end
    print table
  end
end
