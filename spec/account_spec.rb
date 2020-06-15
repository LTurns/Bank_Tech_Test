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

    it 'rturns an array' do
      account = Account.new
      expect(account.withdraw(1.00)).to be_a_kind_of(Array)
    end
  end
end
