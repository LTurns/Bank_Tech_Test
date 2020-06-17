class Account
  attr_reader :balance

  def initialize(balance = 0.00)
    @balance = balance
  end

  def transaction(deposit = 0.00, withdrawal = 0.00)
    @balance += (deposit - withdrawal)
    @time = Time.now.strftime('%d/%m/%Y')
    @deposit = format('%.2f', deposit)
    @withdrawal = format('%.2f', withdrawal)
    "credit: #{@deposit}, debit: #{@withdrawal}"
  end

  def print_statement
    @result = ['date || credit || debit || balance']
    @deposit = nil if @deposit.to_i.zero?
    @withdrawal = nil if @withdrawal.to_i.zero?
    @result.insert(1, ["#{@time} || #{@deposit} || #{@withdrawal} || #{format('%.2f', @balance)}"]).join(" \n")
  end
end
