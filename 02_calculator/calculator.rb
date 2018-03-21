def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
  sum = 0
  if array[0] == nil
    0
  else
    array.each do |num|
    sum += num
  end
end
  sum
end

def multiply(array)
  sum = 1
  array.each do |num|
    sum *= num
  end
  sum
end

def factorial(x)
  i = 1
  sum = 1
  while i <= x do
    sum *= i
    i += 1
  end
  sum
end

def power(x,y)
  sum = 1
  y.times do
    sum *= x
  end
  sum
end
