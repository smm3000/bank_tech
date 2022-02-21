require './bank'

describe Bank do
    it 'increases the balance by the amount deposited' do
        bank = Bank.new
        bank.deposit(10,'10-10-2010')
        expect(bank.show_balance).to eq(10)
    end 

    it 'shows the balance starts at 0 on creation' do
        bank = Bank.new
        expect(bank.show_balance).to eq(0)
    end 

    it 'decreases the balance by the amount withdrawn' do
        bank = Bank.new
        bank.withdraw(10, '10-10-2010')
        expect(bank.show_balance).to eq(-10)
    end 

    it 'provides the correct balance for acceptance criteria' do
        bank = Bank.new
        bank.deposit(1000, '10-01-2023')
        bank.deposit(2000, '13-01-2023')
        bank.withdraw(500, '14-01-2023')
        expect(bank.show_balance).to eq(2500)
    end 


end 