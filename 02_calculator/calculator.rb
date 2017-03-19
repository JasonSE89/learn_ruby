def add(ar1, ar2)
  ar1 + ar2
end

def subtract(ar1, ar2)
  ar1-ar2
end

def sum(ar1)
  total = 0
  if(ar1.length == 1)
    total = ar1.fetch(0)
  else
    ar1.each do |i|
      total = total + i
    end
  end
  return total
end    
    
def multiply(*ar1)
  total = 1
  ar1.each do |i|
    total = total * i
  end
  return total
end

def power(ar1, ar2)
  return ar1**ar2
end

def factorial(ar1)
  if(ar1==1 || ar1==0)
    return ar1
  else
    ar1 * factorial(ar1-1)
  end
end
  
