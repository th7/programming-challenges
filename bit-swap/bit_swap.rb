def swap_bits(int, i1, i2)
  return int if int[i1] == int[i2]
  if int[i1] == 1
    int - bit_value(i1) + bit_value(i2)
  else
    int + bit_value(i1) - bit_value(i2)
  end
end

def bit_value(i)
  2**i
end
