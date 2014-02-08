#help from https://github.com/thejoecarroll/edx-cs169.1x-HW1


class CartesianProduct
  include Enumerable
  attr_accessor :one
  attr_accessor :two

  def initialize(a,b)
    @one, @two = a, b
  end

  def each
    elt1, elt2 = []
    @one.each { |elt1| @two.each { |elt2| yield [elt1, elt2] } }
  end
end

#c=CartesianProduct.new([:a,:b],[4,5])
#c.each {|elt| puts elt.inspect}
