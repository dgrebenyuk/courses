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
