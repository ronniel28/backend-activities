def unique_in_order(iterable)
    result = []
    iterable = iterable.split("") if !iterable.is_a? Array
    iterable.each_with_index {|x,i| result << x if iterable[i-1] != x || i == 0}
    result
  end