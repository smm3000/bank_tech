require './bank'

describe Bank do
    it 'responds to the method .deposit' do
        expect(subject).to respond_to(:deposit)
    end 

    it 'increases the balance by the amount deposited' do
        bank = Bank.new
        expect(bank.deposit(10)).to eq(10)
    end 

    it 'shows the balance starts at 0 on creation' do
        bank = Bank.new
        expect(bank.show_balance).to eq(0)
    end 

    it 'decreases the balance by the amount withdrawn' do
        bank = Bank.new
        expect(bank.withdraw(10)).to eq(-10)
    end 

    it 'provides the correct balance for acceptance criteria' do
        bank = Bank.new
        bank.deposit(1000)
        bank.deposit(2000)
        bank.withdraw(500)
        expect(bank.show_balance).to eq(2500)
    end 


end 