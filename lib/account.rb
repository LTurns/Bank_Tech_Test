class Account

  def initialize
    @time = Time.now.strftime("%d/%m/%Y")
    @deposit = []
    @withdrawal = []
  end

  def deposit(float)
    @deposit.push(@time, float, nil, float)
  end

  def withdraw(float)
    @withdrawal.push(@time, nil, float, float)
  end

  def print_statement
     result = "date || credit || debit || balance"
     puts result
     if @withdrawal != nil
       return result + @withdrawal.join(" || ")
     end
     if @deposit != nil
       return result + @deposit.join(" || ")
     end
  end

end
