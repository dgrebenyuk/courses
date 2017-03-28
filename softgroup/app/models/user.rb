class User < ActiveRecord::Base
  after_save :say_bye
  before_create :say_hi
  before_destroy :die
  attr_accessible :name, :surname, :email

  private

  def say_hi
    puts '------- HELLO -------'
  end

  def say_bye
    puts '------- GOODBYE -------'
  end

  def die
    puts '------- I\'LL BE BACK -------'
  end
end
