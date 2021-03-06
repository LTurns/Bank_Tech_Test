# frozen_string_literal: true

require 'account'

RSpec.describe Account do
  context 'balance is initialized at 0 on object creation' do
    before(:each) do
      @account = Account.new
    end

    it 'shows balance to be equal to 0.00' do
      expect(@account.balance).to eq(0.00)
    end

    it 'displays balance as a type of float' do
      expect(@account.balance).to be_a_kind_of(Float)
    end
  end

  describe '#transaction' do
    before(:each) do
      @account = Account.new
    end

    it 'shows the debit and credit amount entered by the user' do
      expect(@account.transaction).to eq('credit: 0.00, debit: 0.00')
    end

    it 'has a default value of zero for both credit and debit amount' do
      expect(@account.transaction).to eq('credit: 0.00, debit: 0.00')
    end

    it 'maintains the default value of zero for withdrawal when deposit amount is altered' do
      expect(@account.transaction(100)).to eq('credit: 100.00, debit: 0.00')
    end

    it 'maintains the default value of zero for deposit when withdrawal amount is altered' do
      expect(@account.transaction(0, 100)).to eq('credit: 0.00, debit: 100.00')
    end

    it 'displays the credit and debit amounts in a string' do
      expect(@account.transaction(50, 100)).to be_a_kind_of(String)
    end

    it 'adds the user transaction to the balance' do
      @account.transaction(100, 50)
      expect(@account.balance).to eq(50.00)
    end

    it 'enabes the balance to be "in dept" with minus numbers' do
      @account.transaction(50, 100)
      expect(@account.balance).to eq(-50.00)
    end
  end

  describe '#print_statment' do
    before(:each) do
      @account = Account.new
      @time = Time.now.strftime('%d/%m/%Y')
    end

    it 'returns the bank statement as a string' do
      @account.transaction
      expect(@account.print_statement).to eq("date || credit || debit || balance \n#{@time} ||  ||  || 0.00")
    end

    it 'returns a blank withdrawal column when only a deposit is made' do
      @account.transaction(100, 0)
      expect(@account.print_statement).to eq("date || credit || debit || balance \n#{@time} || 100.00 ||  || 100.00")
    end

    it 'returns a blank deposit column when only a withdrawal is made' do
      @account.transaction(0, 100)
      expect(@account.print_statement).to eq("date || credit || debit || balance \n#{@time} ||  || 100.00 || -100.00")
    end
  end
end
