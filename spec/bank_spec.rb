require './bank'

describe Bank do
    it 'responds to the method .deposit' do
        expect(subject).to respond_to(:deposit)
    end 
end 