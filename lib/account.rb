class Account

  def initialize(deposit = 0, withdrawal = 0)
    @time = Time.now.strftime("%d/%m/%Y")
    @deposit = deposit
    @withdrawal = withdrawal
  end

  def print_statement
    @total = []
    @total.push(@deposit, -@withdrawal)
    @result = ["date || credit || debit || balance", "#{@time} || #{@deposit} || #{@withdrawal} || #{@total.sum}"].join(", ")
  end

end
