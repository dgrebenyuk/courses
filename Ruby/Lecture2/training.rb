class Training
  attr_accessor :data

  # Same as attr_accessor
  def data
    @data
  end

  def data=(val)
    @data = val
  end

  def initialize
    @var = "Hello"
    local_var = "Something"
  end

  def getter
    puts @var
    puts local_var
  end
end

class Parent
  @@foo = "Parent"
end
class Thing1 < Parent
  @@foo = "Thing1"
end
class Thing2 < Parent
  @@foo = "Thing2"
end
