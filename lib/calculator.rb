class Calculator
	attr_accessor :number_string

	def initialize(number_string)
		@number_string = number_string
	end
		
	def add
		return 0 if number_string.empty?

		sum = 0
		negative_numbers = []

		numbers.map do |num|
			number = num.to_i
			if number < 0
				negative_numbers << number
			else
				sum = sum + number
			end
		end

		negative_numbers.empty? ? sum: "Negative numbers not allowed #{negative_numbers}" 
	end

	private

		def numbers
			@number_string.gsub("\n", delimeter).split(delimeter)
		end

		def delimeter
			@number_string[0,2] == "//" ? @number_string[2]: ","
		end

end