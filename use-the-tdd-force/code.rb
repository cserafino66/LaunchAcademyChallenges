def plus_two(integer)
  integer += 2
end

def subtract_or_multiply_by_two(integer)
  if integer >= 0
    integer * 2
  else integer -= 2
  end
end

def repeat_last_word(string)
  rptdWord = string.split.last
  return string + ' ' + rptdWord
end

def return_value_of_type(symbol)
  if symbol == :string
    return "String!"
  elsif symbol == :fixnum
    return 99
  else
    return "input does not match any Ruby class"
  end
end

def add_five_and_ten(array)
  array << 5
  array << 10
  return array
end
