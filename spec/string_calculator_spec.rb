RSpec.describe "String Calculator" do
	describe "add" do
		context "when the input is an empty string" do
			it 'return 0' do
				expect(add('')).to eq(0)
			end
		end

		context "when input contain single number" do
			it "return that number" do
				expect(add('1')).to eq(1)
			end
		end

		context "when input contain two values separated by comma" do 
			it "return sum of two numbers" do
				expect(add('1, 5')).to eq(6)
			end
		end

		context "when input contain numbers along with new line" do
			it "return sum of all numbers" do
				expect(add("1\n2,3")).to eq(6)
			end
		end

		context "when input contain delimiters along with numbers" do
			it "return sum of all numbers" do
				expect(add("//;\n1;2")).to eq(3)
			end
		end

		context "when input conatin negative number" do
			it "raise error with message negative number not allowed" do
				expect(add("-1, 4, 5")).to raise_error("negative numbers not allowed")
			end
		end

		context "when input conatin multiple negative number" do
			it "raise error with message negative numbers not allowed" do
				expect(add("-1, -4, 5")).to raise_error("negative numbers not allowed")
			end
		end
	end
end