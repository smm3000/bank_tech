require './bank'

describe Bank do
  let(:bank) { Bank.new }

  it 'increases the balance by the amount deposited' do
    bank.deposit(10)
    expect(bank.show_balance).to eq(10)
  end

  it 'shows the balance starts at 0 on creation' do
    expect(bank.show_balance).to eq(0)
  end

  it 'decreases the balance by the amount withdrawn' do
    bank.withdraw(10)
    expect(bank.show_balance).to eq(-10)
  end

  it 'provides the correct balance for acceptance criteria' do
    bank.deposit(1000)
    bank.deposit(2000)
    bank.withdraw(500)
    expect(bank.show_balance).to eq(2500)
  end

  it 'tests whether the print_statement method responds' do
    expect(bank).to respond_to(:print_statement)
  end
end
