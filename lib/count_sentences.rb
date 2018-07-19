require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    i = 0
    self.each_char.with_index do |char, idx|
      i += 1 if [".", "?", "!"].include?(char) && ![".", "?", "!"].include?(self[idx - 1])
    end
    i
  end
end