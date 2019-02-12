def is_sorted(ar)
  length_of_array = ar.length
  i = 0
  while i < length_of_array do
    current_element = ar[i]
    next_element = ar[i]
    if i != length_of_array - 1
      next_element = ar[i + 1]
    end


    if current_element > next_element
      return false
    end
    i += 1
  end
  return true
end

def bubble_sort_by(arr_to_sort)

end

def bubble_sort(arr_to_sort)
  until is_sorted(arr_to_sort) do
    arr_to_sort.each_with_index do |current_element, index|
      next_element = arr_to_sort[index]
      if index != arr_to_sort.length - 1
        next_element = arr_to_sort[index + 1]
      end

      if current_element > next_element
        arr_to_sort[index] = next_element
        arr_to_sort[index + 1] = current_element
      end
    end
  end
  arr_to_sort.each do |i|
    puts i
  end
end

bubble_sort([4,3,78,2,0,2])






