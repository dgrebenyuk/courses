module M
  def self.included(base)
    base.extend(ClassMethods)
  end

  def speak_up(input)
    puts input.upcase
  end

  module ClassMethods
    def who_am_i
      puts self
    end
  end
end

class C
  include M
end

c = C.new
c.speak_up("hello")
C.who_am_i
