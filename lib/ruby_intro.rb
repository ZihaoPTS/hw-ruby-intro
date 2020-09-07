# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.
  # Run associated tests via: $ rspec -e '#sum ' spec/part1_spec.rb
  sum_return = 0
  arr.each do |x|
    sum_return += x
  end
  return sum_return
  
end

def max_2_sum arr
  #takes an array of integers as an argument and returns the sum of its two largest elements. 
  #For an empty array it should return zero. 
  #For an array with just one element, it should return that element. 
  #Run associated tests via: $ rspec -e '#max_2_sum' spec/part1_spec.rb
  sum = 0
  if arr.length() >= 2
    sum = arr.max(2).sum
  elsif arr.length() == 1
    sum = arr.max(1).first
  end
  return sum
end

def sum_to_n? arr, n
  #takes an array of integers and an additional integer, n, as arguments 
  #returns true if any two elements in the array of integers sum to n. 
  #sum_to_n?([], n) should return false for any value of n, by definition.
  #Run associated tests via: $ rspec -e '#sum_to_n' spec/part1_spec.rb
  if arr.length <= 1
    return false
  end
  if arr.length == 2
    if array.sum == n
      return true
    else
      return false
    end
  end
      
  arr.each_with_index  do |val,key|
    arr[(key+1)..arr.length].each_with_index  do |val_2,key_2|
      if (val + val_2 == n)
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  #Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name. 
  #Run associated tests via: $ rspec -e '#hello' spec/part2_spec.rb
  return 'Hello, ' + name
end

def starts_with_consonant? s
  #takes a string and returns true if it starts with a consonant and false otherwise.
  #(For our purposes, a consonant is any letter other than A, E, I, O, U.)
  #NOTE: be sure it works for both upper and lower case and for nonletters!
  #Run associated tests via: $ rspec -e '#starts_with_consonant?' spec/part2_spec.rb
  if s.length == 0
    return nil
  end
  if s[0] =~  /[^a-zA-Z_]/
    return nil
  end
  if (s[0] =~ /[AEIOUaeiou]/) == 0
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  #takes a string and returns true if the string represents a binary number that is a multiple of 4. 
  #NOTE: be sure it returns false if the string is not a valid binary number! 
  #Run associated tests via: $ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb
  if (s =~  /[0-9]/) && (s =~  /[a-zA-Z_]/)
    return nil
  end
  if s.length == 0
    return nil
  end
  bin_s = s.unpack("B*")[0].to_i(2)
  if (bin_s % 4) == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  #member
  def initialize(isbn,price)
    raise ArgumentError, 'ISBN is empty' unless isbn.length > 0
    @isbn = isbn
    raise ArgumentError, 'bad price' unless price > 0
    @price = price
  end
  def isbn 
    @isbn
  end
  def isbn=(val)
    @isbn = val
  end
  def price
    @price
  end
  def price=(val)
    @price = val
  end
  def price_as_string
    return "$%.2f" % @price
  end
end

