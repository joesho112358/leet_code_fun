# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  vals = []
    
  while head
    vals << head.val
    head = head.next
  end

  vals[vals.size/2..-1]
end

# based on other comments and the tag... i guess i did this wrong :(
