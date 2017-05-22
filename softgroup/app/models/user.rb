class User < ActiveRecord::Base
  after_save :say_bye
  before_create :say_hi
  before_destroy :die
  # attr_accessible :name, :surname, :email, :active

  scope :active, -> { where(active: true) }
  scope :with_email, -> { where('email IS NOT NULL') }

  has_one :profile
  has_many :comments
  has_many :user_tasks
  has_many :tasks, through: :user_tasks

  def fullname
    "#{name} #{surname}"
  end

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
