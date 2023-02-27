# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    
    left = 0
    right = nums.size - 1

    while left <= right
      pivot = left + (right - left) / 2
      
      if target < nums[pivot]
        right = pivot - 1
      elsif target == nums[pivot]
        return pivot
      else
        left = pivot + 1
      end

    end

    left
end
