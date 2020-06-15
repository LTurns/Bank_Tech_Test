class Account

  def deposit(float)
    deposit = []
    time = Time.now
    deposit.push(float, time.strftime("%d/%m/%Y"))
    deposit
  end

  def withdraw(float)
    time = Time.now
    withdrawal = []
    withdrawal.push(float, time.strftime("%d/%m/%Y"))
    withdrawal
  end


end
