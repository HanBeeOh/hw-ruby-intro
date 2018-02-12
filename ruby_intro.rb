# Part 1

def sum(arr)
  #sum all value of array
  if(arr.empty?)
    return 0
  else
    return arr.inject(0,:+)
  end
end

def max_2_sum(arr)
  #sum of two biggest value of array
  sum = 0
  if(arr.empty?)
    return 0
  elsif (arr.count == 1)
    return arr[0]
  else
    arr = arr.sort!
    sum = arr[arr.length-1]+arr[arr.length-2]
    return sum
  end
end

def sum_to_n?(arr, n)
  #if sum of two values of array is equal to given value n, return true, otherwise return false
  if(arr.empty?)
    return false
  elsif(arr.count ==1)
    return false
  end
  
  i = arr.length
  j = arr.length
  
  for counter in 0..i-1
    for counter2 in 0..j-1
      if ((n == arr[counter]+arr[counter2]) && (counter != counter2))
        return true
      end
    end
  end
  return false
end

# Part 2

def hello name
  #concatenate hello and given name
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # check whether first charater of string is consonant or not
  no_consonant = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  if(s.empty?)
    return false
  end
  if(no_consonant.include?(s[0]))
    return false
  end
  if(!s[0][/\W/].nil?)
    return false
  end
  return true
end

def binary_multiple_of_4? s
  #check whether the given string is multiple of 4 
  binary_arr = ["0","1"]
  
  if(s.empty?)
    return false
  end
  if(s.gsub(/[01]/,'')=='')
    if(s.to_i(2)%4 == 0)
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  # class BookInStock, variable isbn and price
  
  attr_accessor :isbn,:price 
  
  def initialize(isbn, price)
    if(isbn.empty?)
        puts "isbn empty error"
        raise ArgumentError.new("Invalid ISBN : ISBN cannot be empty")
      elsif(price <= 0)
        puts "negative price error"
        raise ArgumentError.new("Price has to be bigger than zero")
      else
        @isbn = isbn#.gsub(/[^0-9]/, '')
        @price = price
      end
  end

  def price_as_string
      return "$"+'%.2f'%@price
  end
end
