class Superclass
  def action
    puts "Superclass"
  end
end


module IncludedModule
  def action
    puts "Included module"
    super
  end
end


module PrependedModule
  def action
    puts "Prepended module"
    super
  end
end

module SingletonModule
  def action
    puts "Singleton class"
    super
  end
end

class Klass < Superclass
  include IncludedModule
  prepend PrependedModule

  def action
    puts "Klass"
    super
  end
end


instance = Klass.new
instance.extend(SingletonModule)
instance.action
