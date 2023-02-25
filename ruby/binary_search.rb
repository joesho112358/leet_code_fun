def binary_search(nums, target, low_index, high_index)
  if low_index >= high_index
    if nums[low_index] == target
      return low_index 
    else
      return -1
    end
  end

  pivot_index = (low_index + high_index)/2
  entry = nums[pivot_index]
  
  if entry == target
    pivot_index 
  elsif entry > target
    binary_search(nums, target, low_index, pivot_index - 1)
  elsif entry < target
    binary_search(nums, target, pivot_index + 1, high_index)
  end
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  size = nums.size
  return 0 if nums[0] == target
  return -1 if size == 1

  binary_search(nums, target, 0, size-1)
end
