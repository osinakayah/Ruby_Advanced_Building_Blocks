

def bubble_sort_by(array_to_sort)
  i = 0
  number_of_swaps_done = 0
  while true do
    if i >= array_to_sort.length() - 1
      i = 0
      if number_of_swaps_done == 0
        break
      end
      number_of_swaps_done = 0
    end
    left = array_to_sort[i]
    right = array_to_sort[i + 1]
    difference = yield(left, right)
    if difference > 0
      array_to_sort[i] = right
      array_to_sort[i + 1] = left
      number_of_swaps_done += 1
    end
    i += 1
  end

  puts array_to_sort
end

bubble_sort_by(["hi","hello","hey"]){ |left, right| left.length - right.length }