module MyModule
   GOODMOOD = "happy"
   BADMOOD = "grumpy"

	def greet
		return "I'm #{GOODMOOD}. How are you?"
	end

	def MyModule.greet
		return "I'm #{BADMOOD}. How are you?"
	end
end

class MyClass
   include MyModule

	def sayHi
		puts( greet )
	end
end

ob = MyClass.new
ob.sayHi rescue puts "Can't call"
puts(ob.greet) rescue puts "Can't call"
puts(MyClass.greet) rescue puts "Can't call"
puts MyModule.greet
