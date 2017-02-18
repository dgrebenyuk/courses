class Parent
  private
  def name
    'Hello'
  end
end

class Child < Parent
  def get_parent_name
    # Implicit receiver
    puts name rescue puts 'NoMethodError'

    # Explicit receiver
    puts self.name rescue puts 'NoMethodError'

    # Explicit receiver
    puts Parent.new.name rescue puts 'NoMethodError'
  end
end
c = Child.new
c.get_parent_name
