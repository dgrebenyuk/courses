module FooBar
  def hello
    puts 2
    super
  end
end

class Foo
  def hello
    puts 'hello'
  end
end

class Bar < Foo
  include FooBar # change to prepend

  def hello
    puts 1
    super
  end
end
