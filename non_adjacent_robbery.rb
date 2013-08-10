def rob(street)
  result = street.max
  index = street.index(street.max)
  street.delete_at(index)
  street.delete_at(index-1)
  result += rob(street)
  result
end

def assert(condition)
  raise 'fail' unless condition
end

assert(true)
assert(rob([1]) == 1)
assert(rob([1,2]) == 2)
assert(rob([2,1]) == 2)
assert(rob([1,2,3]) == 4)
puts 'ok'
