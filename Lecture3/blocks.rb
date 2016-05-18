def execute_block(&block)
  yield
end

execute_block { puts "I'm from block"}




{ puts "Hello World"}       # syntax error
a = { puts "Hello World"}   # syntax error
[1,2,3].each {|x| puts x*2} # only works as part of the syntax of a method call




proc = Proc.new { puts "Hello world" }
lam = lambda { puts "Hello World" }

proc.class # returns 'Proc'
lam.class  # returns 'Proc'
