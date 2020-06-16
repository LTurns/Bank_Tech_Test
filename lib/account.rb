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
    return @result.insert(1, ["#{@time} || #{@deposit = nil} || #{@withdrawal = nil} || #{sprintf("%.2f", @balance)}"]).join(" \n") if @deposit == 0.00 && @withdrawal == 0.00
    return @result.insert(1, ["#{@time} || #{@deposit = nil} || #{sprintf("%.2f", @withdrawal)} || #{sprintf("%.2f", @balance)}"]).join(" \n") if @deposit == 0.00
    return @result.insert(1, ["#{@time} || #{sprintf("%.2f", @deposit)} || #{@withdrawal = nil} || #{sprintf("%.2f", @balance)}"]).join(" \n") if @withdrawal == 0.00
    return @result.insert(1, ["#{@time} || #{sprintf("%.2f", @deposit)} || #{sprintf("%.2f", @withdrawal)} || #{sprintf("%.2f", @balance)}"]).join(" \n ") if @deposit != 0.00 && @withdrawal != 0.00
  end
end
