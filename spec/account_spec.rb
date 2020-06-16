require 'account'

RSpec.describe Account do

  describe '#deposit' do
    before(:each) do
       @account = Account.new
     end

    it 'returns an array' do
        account = Account.new
        expect(account.deposit(1.00)).to be_a_kind_of(Array)
    end

    it 'returns the float it received' do
        account = Account.new
        expect(account.deposit(1.00)).to include(1.00)
    end

    it 'returns the current date in the format of DD/MM/YYYY' do
        account = Account.new
        time = Time.now
        expect(account.deposit(1.00)).to include(time.strftime("%d/%m/%Y"))
    end
  end

  describe '#withdraw' do

    it 'returns an array' do
      account = Account.new
      expect(account.withdraw(1.00)).to be_a_kind_of(Array)
    end

    it 'returns the float it received' do
        account = Account.new
        expect(account.withdraw(1.00)).to include(1.00)
    end

    it 'returns the date in the format of DD/MM/YYYY' do
    account = Account.new
    time = Time.now
    expect(account.withdraw(1.00)).to include(time.strftime("%d/%m/%Y"))
   end
 end

 describe '#print_statement' do
   it 'returns the title row of the statement' do
     account = Account.new
     account.withdraw(1.00)
     expect(account.print_statement).to eq("date || credit || debit || balance")
    end

  end
end
