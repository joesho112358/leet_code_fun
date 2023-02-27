# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  left = 0
  right = numbers.size - 1
  while right > left do
    num = numbers[left] + numbers[right]
    break if num == target

    if num < target
      left += 1
    else
      right -= 1
    end
  end

  [left + 1, right + 1]  
end
