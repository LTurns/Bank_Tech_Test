require 'account'

RSpec.describe Account do
#
#   beforeEach
#   time = Time.new
#   account = Account.new
# end
#test that the input value is a float - or simply change it to a float at the start of the method?


  describe '#deposit' do
    # it 'receives a float as a parameter' do
    #       account = Account.new
    #       expect(account.deposit(1.00)).to be_a_kind_of(Array)
    # end

    #it takes only one parameter (one deposit or withdrawal at a time)


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
     expect(account.print_statement).to include "date || credit || debit || balance"
    end

    it 'contains the withdrawal in the array' do
      account = Account.new
      time = Time.now
      account.withdraw(1.00)
      expect(account.print_statement).to include("1.0")
    end
  end
end
