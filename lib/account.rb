class Account

  def initialize(balance = 0)
    @balance = balance
    @result = ["date || credit || debit || balance"]
    @time = Time.now.strftime("%d/%m/%Y")
  end

  def transaction(deposit = 0, withdrawal = 0)
    @balance += (deposit -= withdrawal)

    print_statement(deposit, withdrawal)
  end

  def print_statement(deposit, withdrawal)
    @result.push(["#{@time} || #{deposit} || #{withdrawal} || #{@balance}"]).join("\n")
    # @deposit = nil if @deposit == 0
    # @withdrawal = nil if @withdrawal == 0
  end
  # def print_processor
  #   @result.to_a.shift("date || credit || debit || balance")
  # end

end


# @result ["date || credit || debit || balance"] <<
# "#{@time} || #{@deposit} || #{@withdrawal}"
