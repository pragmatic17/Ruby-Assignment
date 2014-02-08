#help from https://github.com/thejoecarroll/edx-cs169.1x-HW1

class Dessert
	def initialize(name, calories)
		@name, @calories=name, calories
	end

	attr_accessor :name, :calories

	def healthy?
		@calories<200
	end

	def delicious:
		true
	end
end

#b
class JellyBean<Dessert
	def initialize(name, calories, flavor)
		@name, @calories, @flavor=name, calories,flavor
	end

	attr_accessor :name, :calories, :flavor

	def delicious?
		true unless @flavor == "black licorice"
	end
end
