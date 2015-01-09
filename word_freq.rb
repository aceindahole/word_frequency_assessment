class String
  define_method(:word_freq) do |user_string|
    word_freq_result = 0
    user_word = self.downcase()
    new_user_string = user_string.downcase().split()
    new_user_string.each() do |string_loop|
      if string_loop == user_word
        word_freq_result += 1
      else
        word_freq_result
      end
    end
    word_freq_result
  end
end
