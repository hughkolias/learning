class RevealingReferences

	attr_reader :wheels

	def initialize(data)
		@wheels = wheelify(data)
		puts wheels
	end

	def diameters
		wheels.collect {|wheel| diameter(wheel)}
	end

	def diameter(wheel)
		wheel.rim + (wheel.tire*2)
	end

	Wheel = Struct.new(:rim, :tire)

	def wheelify(data)
		data.collect {|wheel_attributes|
		 Wheel.new(wheel_attributes[0], wheel_attributes[1])}
	end

end

puts RevealingReferences.new([[1,2], [2,1]]).diameters
 


