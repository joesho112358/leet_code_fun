# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return s.size if s.size < 2
  window = []
  max = 1

  s.each_char do |character|
    if window.include?(character)
      while window.include?(character)
        window = window[1..-1]
      end
    end
    window << character
    max = max > window.size ? max : window.size
  end

  max
end
