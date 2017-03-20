module Notification
  def self.included(base)
    base.extend(ClassMethods)
  end

  def send_message(recepient)
    yield if block_given?
    Service::Deliver.new.send(self.class.to_s.downcase, recepient)
  end

  def add_to_log(recepient)
    File.open("#{self.class}.log", 'a+') do |f|
      f.puts "Invalid recepient '#{recepient}'"
    end
  end

  module ClassMethods
    def log
      File.open("#{self.name}.log", 'r') { |f| puts f.read }
    end
  end
end

class Email
  include Notification

  def send_message(recepient)
    if recepient =~ /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
      super
    else
      add_to_log(recepient)
      raise ArgumentError
    end
  end
end

class Sms
  include Notification

  def send_message(recepient)
    if recepient =~ /^\+\d{12}$/
      super
    else
      add_to_log(recepient)
      raise ArgumentError
    end
  end
end

module Service
  class Deliver
    def sms(recepient)
      puts "Sending SMS via service"
    end

    def email(recepient)
      puts "Sending Email via service"
    end
  end
end
