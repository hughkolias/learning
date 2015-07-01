def spank5000 age
	puts 'SPANK '*(age/60/60/24/365)
end
puts 'what year were you born?'
year = gets.to_i
puts 'what month were you born?'
month = gets.to_i
puts 'what day were you born?'
day = gets.to_i


bday = Time.mktime(year,month,day)

spank5000 (Time.new - bday)


