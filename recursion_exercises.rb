# warmup
require "byebug"
def range(start_num, end_num)
    return [] if start_num >= end_num
    return [start_num] if start_num + 1 == end_num

    range(start_num, end_num - 1) << (end_num - 1)
end

# p range(1, 5)
# p range(2, 5)
# p range(3, 8)

def sum_array(array)
    return nil if array.length == 0
    return array[0] if array.length == 1

    array[0] + sum_array(array[1..-1])
end

# p sum_array([1, 2, 3, 4, 5])

def iter_sum_array(array)
    sum = 0

    array.each { |num| sum += num }
    sum
end
# p iter_sum_array([1, 2, 3, 4, 5])

# problem set

def exp_1(n, power)
    return 1 if power == 0

    n * exp_1(n, power - 1)
end
# p exp_1(1, 0)
# p exp_1(1, 1)
# p exp_1(2, 0)
# p exp_1(2, 1)
# p exp_1(2, 2)
# p exp_1(3, 4)
# p exp_1(3, 0)
# p exp_1(3, 1)

def exp_2(n, power)
    return 1 if power == 0
    return b if power == 1

    if power.even?
        exp(b / 2) ** 2
    else
        n * (exp(n, (power - 1) / 2) ** 2)
    end
end
# p exp_1(1, 0)
# p exp_1(1, 1)
# p exp_1(2, 0)
# p exp_1(2, 1)
# p exp_1(2, 2)
# p exp_1(3, 4)
# p exp_1(3, 0)
# p exp_1(3, 1)

class Array
    def deep_dup
        dup = []
        self.each do |ele|
            if ele.is_a?(Array)
                dup << Array.new(1) {ele.deep_dup}
            else
                dup << Array.new(1) {ele}
            end
        end
        dup
    end
end
# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"]
# ]
# p robot_parts.object_id
# p dup = robot_parts.deep_dup
# p dup
# p dup.object_id

def fibonacci(n)
    return nil if n <= 0
    return [1] if n == 1
    return [1, 1] if n == 2

    last_iteration = fibonacci(n-1)

    last_iteration << last_iteration[-1] + last_iteration[-2]
end
# p fibonacci(1)
# p fibonacci(2)
# p fibonacci(3)
# p fibonacci(4)
# p fibonacci(5)
# p fibonacci(6)

def fibonacci_iter(n)
    return [1] if n == 1
    sequence = [1, 1]
    return sequence if n == 2
    i =1

    while i < n - 1
        sequence << sequence[i] + sequence[i - 1]
        i += 1
    end

    return sequence
end
# p fibonacci_iter(1)
# p fibonacci_iter(2)
# p fibonacci_iter(3)
# p fibonacci_iter(4)
# p fibonacci_iter(5)
# p fibonacci_iter(6)

def bsearch(arr, target) # returns index of target in the arr
    mid_index = (arr.length) / 2
    return mid_index if arr[mid_index] == target

    left = arr[0...mid_index]
    right = arr[(mid_index + 1)..-1]

    if arr[mid_index] > target
        bsearch(left, target)
    else
        mid_index + 1 + bsearch(right, target)
    end
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil


def merge_sort(arr)
    return arr if arr.length = 1

    mid_i = array.length - 1

    left = merge_sort(arr[0..i])
    right = merge_sort(arr[(i + 1)..-1])

    merge()

end

def merge(left, right)

    while !left.empty && !right.empty
        if left.first > right.first

        else

    end

end

def subsets(arr)
    return arr if arr.length == 1
    left = arr[0..-2]

    subsets(left)

end


    
