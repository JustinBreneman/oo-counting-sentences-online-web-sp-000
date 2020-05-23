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
    string_array = self.split(".")
    if string_array.length == 0
      0
    else
      string_array.map do |string|
        string.split(".")
        string.split("!")
        string.split("?")
      end
      string_array.length
    end
  end
end
