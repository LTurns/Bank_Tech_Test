class Account

  attr_reader :balance

  def initialize(balance = 0.00)
    @balance = balance
  end

  def transaction(deposit = 0.00, withdrawal = 0.00)
    @time = Time.now.strftime("%d/%m/%Y")
    @deposit = deposit
    @withdrawal = withdrawal
    @balance += (@deposit - @withdrawal)
    "credit: #{sprintf("%.2f", @deposit)}, debit: #{sprintf("%.2f", @withdrawal)}"
  end

  def print_statement
    @result = ["date || credit || debit || balance"]
    @deposit = nil if @deposit == 0
    @withdrawal = nil if @withdrawal == 0
    @result.insert(1, ["#{@time} || #{@deposit} || #{@withdrawal} || #{@balance}"]).join(" \n ")
  end
end
