# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)

  zeroes_count = 0
  nums.size.times do |i|
    if nums[i-zeroes_count] == 0
      nums.insert(-1, nums.slice!(i-zeroes_count))
      zeroes_count += 1
    end
  end
end
