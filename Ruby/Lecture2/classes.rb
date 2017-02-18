class Train
  def initialize
    puts "I'm created"
    @var = "Yay!!!"
  end

  def ping
    puts "Pinger"
    p @var
  end

  def self.class_ping
    puts "I'm from class"
  end

  private

  def calculate

  end

  protected

  def prot_method

  end

  public # Bad Code!

  def method_name

  end
end
