class Account

  def initialize
    @time = Time.now.strftime("%d/%m/%Y")
    @deposit = []
    @withdrawal = []
    @total = []
    result = "date || credit || debit || balance"
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
     puts @result
      return @withdrawal | @deposit
     # if @withdrawal != nil
     #   return result + @withdrawal.join(" || ")
     # end
     # if @deposit != nil
     #   return result + @deposit.join(" || ")
     # end
  end

end
