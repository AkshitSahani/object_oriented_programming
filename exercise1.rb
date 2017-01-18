class BankAccount

attr_accessor :balance, :interest_rate, :withdraw, :deposit, :gain_interest
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end

  def gain_interest(interest_rate)
    @balance = @balance * (1 + interest_rate)
  end
end
