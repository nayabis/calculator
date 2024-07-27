class Calculator
  attr_accessor :number_string, :negative_numbers

  def initialize(number_string)
    @number_string = number_string
    @negative_numbers = []
  end

  def add
    sum = 0
    numbers.map do |num|
      number = num.to_i
      number < 0 ? (negative_numbers << number) : (sum+= number)
    end
    negative_numbers.empty? ? sum : "Negative numbers not allowed #{negative_numbers}"
  end

  private
  def numbers
    @number_string.gsub("\n", delimeter).split(delimeter)
  end

  def delimeter
    @number_string[0,2] == "//" ? @number_string[2]: ","
  end
end
