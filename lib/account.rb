class Account

  def deposit(float)
    deposit = []
    time = Time.now
    deposit.push(float, time.strftime("%d/%m/%Y"))
     return deposit
  end


end
