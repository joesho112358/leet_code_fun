# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    return 1 if n == 1
    left = 1
    right = n
    pivot = n/2

    while left < right
      if is_bad_version(pivot)
        right = pivot
      else
        left = pivot +1
      end
      pivot = left + (right - left)/2
    end

    pivot
end
