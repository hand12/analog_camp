class Mansion
	attr_reader :name, :address, :rent
	def initialize(name, address, rent)
		@name = name
		@address = address
		@rent = rent
	end
end

mansions = []
flag = true

while flag do

	puts "0:物件を登録する"
	puts "1:物件を見る"
	input = gets.to_i

	if input == 0
		puts "マンション名を入力してください"
		name = gets.chomp!
		puts "住所を入力してください"
		address = gets.chomp!
		puts "家賃を入力して下さい"
		rent = gets.to_i
		mansion = Mansion.new(name, address, rent)
		mansions.push(mansion)
	elsif input == 1
		puts "登録されているマンションは"
		mansions.each do |mansion|
			puts mansion.name
		end
		puts "です。"
	else
		flag = false
	end

end