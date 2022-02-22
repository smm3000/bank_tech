# Bank Tech Test

# Project Description

The purpose of this project is to practise Technical challenges. This challenge aims to create a program that allows you to have basic bank account functionality:
deposits, withdrawals and account statement printing.

# Requirements

The requirements for the project were as follows:

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

# Approach

The approach that was taken during this project was following the TDD methodology. The approach was to create a simple but effective program that meets the requirements above. 

The structure of the code follows OOP principles - with a single Bank class that represents a single instance of a Bank Account. 

# Technologies Used

This program was written in Ruby. Rspec was used as the testing framework for this project. 

# How to Install & Run the project

The project can be run using the following installation instructions. 

```
irb 
require './bank.rb'
bank = Bank.new
```

Please note when withdrawing or depositing you must include the amount first and then the transaction date as a string (within ' '). 

Example below:

```
bank.deposit(1000, '13-01-2023')
```

# Example Run:

```
irb 
require './bank.rb'
bank = Bank.new
bank.deposit(1000,'10-01-2023')
bank.deposit(2000,'13-01-2023')
bank.withdraw(500,'14-01-2023')
bank.print_statement
```

Output as follows:

```
+------------+--------+---------+
| Date       | Amount | Balance |
+------------+--------+---------+
| 14-01-2023 | 500    | 2500    |
| 13-01-2023 | 2000   | 3000    |
| 10-01-2023 | 1000   | 1000    |
+------------+--------+---------+ 
```

# How to run the tests

To run the tests please run the following command within the project directory:

```
rspec
```
# Additional Information

The gem 'terminal-table' was used in the project to help format the output for the project. 

