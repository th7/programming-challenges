module NonAdjacentRobbery
  extend self

  def v
    '1'
  end

  def even_sum(array)
    result = 0
    array.each_with_index do |elem, i|
      result += elem if i % 2 == 0
    end
    result
  end

  def odd_sum(array)
    result = 0
    array.each_with_index do |elem, i|
      result += elem if i % 2 == 1
    end
    result
  end

  def rob(array)
    return 0 if array.length == 0
    return array[0] if array.length == 1

    if even_sum(array) >= odd_sum(array)
      i = 0
    else
      if array.length > 3 && array[3] > array[2] + array[1] && array[0] > array[1]
        i = 0
      else
        i = 1
      end
    end

    result = array[i]

    if i > 0
      prev_i = i - 1
    else
      prev_i = i
    end

    if i < array.length - 1
      next_i = i + 1
    else
      next_i = i
    end

    array.slice!(prev_i..next_i)
    result + rob(array)
  end
end
