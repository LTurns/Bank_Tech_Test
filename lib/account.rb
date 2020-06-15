class Account

  def deposit(float)
    @deposit = []
    time = Time.now
    @deposit.push(time.strftime("%d/%m/%Y"), float, nil, float)
    # we know that credit relates to deposit and withdrawal relates to debit so can start mirroring the table - the two floats should never class if we put
    # them at different indexes.
    # when the basics are done, ensure the correct amount of decimal places (2) are used - refactor.
  end

  def withdraw(float)
    time = Time.now
    @withdrawal = []
    @withdrawal.push(time.strftime("%d/%m/%Y"), nil, float, float)
    # information we receive here will then mirror the print statement - so we simply need to concact all the results.
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
