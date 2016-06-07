class Fixnum
  def to_word
    if (0..3).include? self
      ['nothing', 'one', 'couple', 'few'][self]
    elsif self > 3
      'many'
    elsif self < 0
      'negative'
    end
  end
end
