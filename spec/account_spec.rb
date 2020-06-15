require 'account'

RSpec.describe Account do

  describe '#deposit' do
  it 'receives a float as a parameter' do
    account = Account.new
    expect(account.deposit(100.00)).to be_a_kind_of(Float)
  end

  it 'returns the float it received' do
    account = Account.new
    expect(account.deposit(100.00)).to eq(100.00)
  end
end
end
