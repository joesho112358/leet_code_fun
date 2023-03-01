# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  first, second = head, head
  
  n.times do |i|
    first = first.next
  end

  return head.next if first.nil?
  
  while first
    first = first.next
    second = second.next unless first.nil?
  end
  
  second.next = second.next&.next
  
  head
end
