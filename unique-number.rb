# All numbers are equal except for one. 
def find_uniq(arr)
  return nil if arr.size < 3
  if arr[0] == arr[1]
    arr.each.with_index do |x, i|
    i += 1
    return arr[i] if arr[i] != x
    end
  elsif arr[1] == arr[2]
    arr[0]
  else
    arr[1]
  end
end