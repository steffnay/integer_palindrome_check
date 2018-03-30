# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  if number == nil || number < 0
    return false
  elsif number < 10
    return true
  end


  length = 0
  array_entry = 1
  a = 10
  b = 1
  array = []
  num = 0

  while num < number
    array_entry = number % a / b
    num = number % a

    length += 1
    a *= 10
    b *= 10
    array << array_entry
  end

  front_index = 0
  back_index = length - 1

  while front_index < back_index
    if array[front_index] != array[back_index]
      return false
    else
      front_index += 1
      back_index -= 1
    end
  end
  return true


end
