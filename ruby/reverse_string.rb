# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  left, right = 0, s.size - 1
  while left < right
    temp = s[left]
    s[left] = s[right]
    s[right] = temp

    left += 1
    right -= 1
  end
  s
end
