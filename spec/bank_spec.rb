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

    
end 