class Post < ActiveRecord::Base
  attr_accessible :title, :body
  scope :my, -> { where("title ILIKE 'My%'") }
  scope :yay, ->(body) { where("body = ?", body) }
  validates :title, presence: true
  after_create :say_hello
  belongs_to :user

  def upcase_title
    title.upcase
  end

  def self.upcase_titles
    self.all.map{|t| t.title.upcase}
  end

  def say_hello
    puts "Hello"
  end

end
