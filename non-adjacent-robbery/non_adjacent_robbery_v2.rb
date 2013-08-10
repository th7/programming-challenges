module NonAdjacentRobbery
  extend self

  def v
    '2'
  end

  def even_sum(array, index=0)
    result = 0
    array.each_with_index do |elem, i|
      next unless index <= i
      result += elem if (i - index) % 2 == 0
    end
    result
  end

  def odd_sum(array, index=0)
    result = 0
    array.each_with_index do |elem, i|
      next unless index <= i
      result += elem if (i - index) % 2 == 1
    end
    result
  end

  def rob(array, i=0)
    return 0 if i > array.length - 1
    return array[i] if i == array.length - 1

    unless even_sum(array, i) >= odd_sum(array, i) || array.length > i + 3 && array[i+3] > array[i+2] + array[i+1] && array[i] > array[i+1]
      i += 1
    end

    array[i] + rob(array, i+2)
  end
end
