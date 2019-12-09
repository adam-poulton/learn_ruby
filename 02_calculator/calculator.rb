#write your code here
def multiply(a, b)
  a * b
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(nums)
  sum = 0
  while nums.length > 0
    sum += nums.pop()
  end
  sum
end

def power(a,b)
  sum = 1
  while b > 0
    sum *= a
    b -= 1
  end
  sum
end

def factorial(n)
  sum = 1
  while n > 0
    sum *= n
    n -= 1
  end
  sum
end