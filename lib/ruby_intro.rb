# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).inject(0,:+)
end

def sum_to_n? arr, n
   return false if arr.empty?
   m = Hash.new
   arr.each do |i|
       if m.has_key?(i)
          return true
       else
          m[n-i] = i
       end
   end
   return false
end

# Part 2
def hello(name)
  s = "Hello, " + name
  return s
end

def starts_with_consonant? s
  if s =~ /^[a-z]/i and s !~ /^[aeiou]/i
     return true
  else
     return false
  end
end

def binary_multiple_of_4? s
    return false if s.empty?
    if s !~ /[\D]/ and s !~ /[23456789]/ and s.to_i(2) % 4 == 0
      return true
    else
      return false
    end
end


# Part 3

class BookInStock
     attr_accessor :isbn, :price
     def initialize(isbn, price)
         raise ArgumentError if isbn.empty? || price <= 0
         @isbn = isbn
         @price = price
     end
     
     def price_as_string
        "$%0.2f" % @price
     end
end
