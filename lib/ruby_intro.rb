# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |number|
    sum += number
  end

  sum
end

def max_2_sum arr

  if(arr.length > 1 )
    max_total = arr[0] +  arr[1]
  elsif arr.length ==1
    max_total = arr[0]
  else
    max_total = 0
  end

  for i in 0..arr.length-1
    for j in i+1..arr.length-1
      if (arr[i] + arr[j] > max_total) then
        max_total = arr[i] + arr[j]
      end
  end

end

  max_total
end

def sum_to_n? arr, n
  if arr.length <=1
    return false
  end

  for i in 0..arr.length-1
    for j in i+1..arr.length-1
      if (arr[i] + arr[j] == n) then
        return true
      end
  end

end

  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  #puts "Hello!!!!!!: " +  s.upcase[0]
  if(s.length == 0) then
    return false
  end
  return "BCDFGHJKLMNPQRSTVXZWY".include? s.upcase[0]
end

def binary_multiple_of_4? s
  if( s =~/\A[01]+\Z/) then
    return s.to_i(10) % 4 == 0
  end

  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)

    if(isbn.length == 0 || price <= 0 ) then
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
end
