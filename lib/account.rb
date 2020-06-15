class Account

  def initialize
    @time = Time.now.strftime("%d/%m/%Y")
    @deposit = []
    @withdrawal = []
    @total = []
    @result = ["date || credit || debit || balance"].join(" || ")
  end

  def deposit(float)
    @total.push(float)
    @deposit.push(@time, float, nil, @total.sum)
  end

  def withdraw(float)
    @total.push(-float)
    @withdrawal.push(@time, nil, float, @total.sum)
  end

  def print_statement
      @result
  end

end
