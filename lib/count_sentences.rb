require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    string_array = []
    string_array = self.split(" ")
    count = 0
    string_array.each do |string|
      if string.end_with?(".")
        count += 1
      elsif string.end_with?("?")
        count += 1
      elsif string.end_with?("!")
        count += 1
      end
    end
    count
  end
end
