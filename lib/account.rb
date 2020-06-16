class Account

  def initialize(balance = 0)
    @balance = balance
    @result = ["date || credit || debit || balance"]
    @time = Time.now.strftime("%d/%m/%Y")
  end

  def transaction(deposit = 0, withdrawal = 0)
    @deposit = deposit
    @withdrawal = withdrawal
    @balance += (@deposit - @withdrawal)
  end

  def print_statement
    @result.push(["#{@time} || #{@deposit} || #{@withdrawal} || #{@balance}"]).join "\n"
    # @deposit = nil if @deposit == 0
    # @withdrawal = nil if @withdrawal == 0
  end
  # def print_processor
  #   @result.to_a.shift("date || credit || debit || balance")
  # end

end


# @result ["date || credit || debit || balance"] <<
# "#{@time} || #{@deposit} || #{@withdrawal}"
