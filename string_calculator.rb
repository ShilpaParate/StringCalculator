class StringCalculator
  def self.add(input_str)
    # when number is empty
    return 0 if input_str.empty?

		result = 0
	
		begin
			numbers_list = input_str.scan(/-?\d+/).map(&:to_i)
			
			negative_numbers_arr = numbers_list.select {|num| num < 0 }
			if negative_numbers_arr.any?
				raise("Negative numbers not allowed #{negative_numbers_arr}")
			end
			puts negative_numbers_arr
			numbers_list.each do |n|
				result += n
			end
			return result
		rescue => e
			puts "#{e.message}"
		end
		
  end
end
puts "Enter String : "
input_str = gets.chomp
puts "Addition Of Numbers from String : #{StringCalculator.add(input_str)}"