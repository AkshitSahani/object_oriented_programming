class Paperboy
  attr_reader :name, :experience, :earnings
  def initialize(name, experience = 0, earnings = 0)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    return (50 + (@experience / 2))
  end

  def deliver(start_address, end_address)

    if (((end_address + 1) - start_address) - quota) < 0
      @earnings += ((((end_address + 1) - start_address) * 0.25) - 2)
      @experience += ((end_address + 1) - start_address)
      return ((((end_address + 1) - start_address) * 0.25) - 2)
    else
      calc_earn=((((end_address + 1) - start_address) - quota) * 0.5) + (quota * 0.25)
      @earnings += calc_earn
      @experience += ((end_address + 1) - start_address)
      return calc_earn
    end
  end

  def report
    return "Hi, I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far."
  end
end
