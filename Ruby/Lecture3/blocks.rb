def block_method1(&block)
  yield # Error if no block
end

def block_method2(&block)
  yield if block_given?
end

def block_method3(&block)
  name = "SoftGroup"
  yield(name) if block_given?
end

def simple_method
  p name
end

def execute_lam
  lam = lambda {|a| return a+1}
  x = lam.call(1)
  x+=1
end

def execute_proc
  proc = Proc.new{|a| return a+1}
  x = proc.call(1)
  x+=1
end
