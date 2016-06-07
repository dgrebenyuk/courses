class String
  def palindrome?()
    letters = self.downcase.scan(/\w/)
    return false if letters.nil?
    letters == letters.reverse
  end
end 
