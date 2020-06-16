# frozen_string_literal: true

class Account
  attr_reader :balance

  def initialize(balance = 0.00)
    @balance = balance
  end

  def transaction(deposit = 0.00, withdrawal = 0.00)
    @time = Time.now.strftime('%d/%m/%Y')
    @deposit = deposit
    @withdrawal = withdrawal
    @balance += (@deposit - @withdrawal)
    "credit: #{format('%.2f', @deposit)}, debit: #{format('%.2f', @withdrawal)}"
  end

  def print_statement
    @result = ['date || credit || debit || balance']
    if @deposit == 0.00 && @withdrawal == 0.00
      return @result.insert(1, ["#{@time} || #{@deposit = nil} || #{@withdrawal = nil} || #{format('%.2f', @balance)}"]).join(" \n")
    end
    if @deposit == 0.00
      return @result.insert(1, ["#{@time} || #{@deposit = nil} || #{format('%.2f', @withdrawal)} || #{format('%.2f', @balance)}"]).join(" \n")
    end
    if @withdrawal == 0.00
      return @result.insert(1, ["#{@time} || #{format('%.2f', @deposit)} || #{@withdrawal = nil} || #{format('%.2f', @balance)}"]).join(" \n")
    end

    if @deposit != 0.00 && @withdrawal != 0.00
      @result.insert(1, ["#{@time} || #{format('%.2f', @deposit)} || #{format('%.2f', @withdrawal)} || #{format('%.2f', @balance)}"]).join(" \n ")
    end
  end
end
