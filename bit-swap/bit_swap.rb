def swap_bits(int, i1, i2)
  return int if int[i1] == int[i2]
  if int[i1] == 1
    int = int - int[i1] * bit_value(i1)
              + int[i2] * bit_value(i2)
  else
    int = int + int[i1] * bit_value(i1)
              - int[i2] * bit_value(i2)
  end
  int
end

def bit_array(int)
  array = Array.new(64)
  array.each_index do |i|
    array[i] = int[i]
  end
  array
end

def bit_value(i)
  2**i
end
