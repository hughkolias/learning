class OrangeTree

	def initialize(type, height, age)
		@height = height
		@type = type
		@age = age
	end

	attr_reader :height
	attr_reader :type

	def oneYearPasses
		@height += 2
		@age += 1
		if @height > 12
			@orangeCount =+ (2 * @age)
		else
			@orangeCount = 0
		end
		deadtree
	end

	def deadtree
		if @height > 22
			puts 'tree dead yo'
			exit
		end
	end

	def countTheOranges
		@orangeCount
	end

	def pickAnOrange(howmany)
		@orangeCount = @orangeCount - howmany
	end


end

tree1 = OrangeTree.new 'orange', 5, 1
tree2 = OrangeTree.new 'banana', 2, 1

puts tree1.height
puts tree1.type

puts tree2.height
puts tree2.type

tree1.oneYearPasses
tree1.oneYearPasses
tree1.oneYearPasses
tree1.oneYearPasses
tree1.oneYearPasses
tree1.oneYearPasses
tree1.oneYearPasses
tree1.oneYearPasses

puts tree1.countTheOranges

tree1.pickAnOrange 1

puts tree1.countTheOranges




