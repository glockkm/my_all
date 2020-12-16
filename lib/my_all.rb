require 'pry'

# def my_all?(collection)
#     i = 0
#     block_return_values = []
#     while i < collection.length
#         block_return_values << yield(collection[i]) # code ran hits the yield line and it is going to send whatever is passed in as the argument to the block.
#         i = i + 1 # i += 1 does the same thing
#     end
#     ################### The return value of all? is simply true or false. 
# # If any element in the collection 
# # evaluates to false, then all? should return false. 
# # If they are all true, the method should return true.
#     ###########Let's just add an #include? method to determine the return value of the my_all? method.
#     if block_return_values.include?(false) # include? to compare elements to a known value
#         false # returns false if it DOES NOT find a match
#       else 
#         true # returns true if it does find a match with the argument of false in this exmp
#       end
#     end 
# end
# Since we are looping through several elements in an array, 
# what data structure can we use to store multiple values? 
# An array! First, we'll declare our array before entering the while loop: block_return_values = []. 
# Then, in the loop, let's shovel (<<) 
# the return value of the block into the array: block_return_values << yield(collection[i]).





# my_all?([1,2,3]) {|i| i < 3}  is the same thing as ...
# def my_all?([1,2,3])
#     i = 0
#     while i < 3
#       yield(1) When it hits the yield(1), it is going to send 1 to the block, evaluate it, and send the return value back to yield. my_all?([1,2,3]) {|1| 1 < 2}
#       i = 0 + 1
#     end
#   end 

# FINAL CODE

def my_all?(collection)
    i = 0
    block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])
      i = i + 1
    end
  
    if block_return_values.include?(false)
      false
    else
      true
    end
  end 