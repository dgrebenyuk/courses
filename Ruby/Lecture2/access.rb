class Parent
  protected
  def name
    'Yomana'
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
