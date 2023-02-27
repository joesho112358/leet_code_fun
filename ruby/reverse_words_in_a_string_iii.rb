# @param {String} s
# @return {String}
def reverse_words(s)
  words = s.split

  words.map do |word|
    left, right = 0, word.size - 1
    while left < right
      temp = word[left]
      word[left] = word[right]
      word[right] = temp
      left += 1
      right -= 1
    end
    word
  end
  words.join ' '
end
