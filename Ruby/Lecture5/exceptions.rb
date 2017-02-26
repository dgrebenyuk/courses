def raise_exception
  puts 'I am before the raise.'
  raise 'An error has occured'
  puts 'I am after the raise'
end

def inverse(x)
  raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
  1.0 / x
end

class NotInvertibleError < StandardError
end

def raise_and_rescue
  begin
    puts 'I am before the raise.'
    raise 'An error has occured.'
    puts 'I am after the raise.'
  rescue
    puts 'I am rescued.'
  end
  puts 'I am after the begin block.'
end

# Multiple Rescues from different exception types
# begin
#   # -
# rescue OneTypeOfException
#   # -
# rescue AnotherTypeOfException
#   # -
# else
#   # Other exceptions
# end

def inspec_exception
  begin
    raise 'A test exception.'
  rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
  end
end
