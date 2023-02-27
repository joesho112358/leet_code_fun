# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    left = 0
    right = nums.size - 1
    return_array = []

    while left <= right
      if nums[left].abs > nums[right].abs
        return_array = [nums[left] ** 2] + return_array
        left += 1
      else
        return_array = [nums[right] ** 2] + return_array
        right -= 1
      end
    end

    return_array
end
