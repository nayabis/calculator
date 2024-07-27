require './lib/calculator.rb'

describe Calculator do
	it "should return 0 for empty string" do
		expect(described_class.new("").add).to eq(0)
	end

	it "should return sum for single number string" do
		expect(described_class.new("3").add).to eq(3)
	end

	it "should return error for single -ve number string" do
		expect(described_class.new("-3").add).to eq("Negative numbers not allowed \[-3\]")
	end

	it "should return sum for string of numbers" do
		expect(described_class.new("2,3,4,5,8").add).to eq(22)
	end

	it "should support new line as delimeter" do
		expect(described_class.new("2\n3\n4").add).to eq(9)
	end

	it "should support mix of new line and delimeter" do
		expect(described_class.new("2\n3\n4,5,6").add).to eq(20)
	end

	it "should support new delimeter" do
		expect(described_class.new("//;2\n3\n4;5;6").add).to eq(20)
	end

	it "should throw exception if negative number present" do
		expect(described_class.new("//;2\n3\n4;5;-2;6;-2;-5").add).to eq("Negative numbers not allowed \[-2, -2, -5\]")
	end
end