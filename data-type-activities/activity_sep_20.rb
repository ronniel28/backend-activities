
def minimum(array)
    current_min = array[0]  
    for num in array      
      if num < current_min
        current_min = num  
        end
    end
     current_min
end
    puts minimum([34, 15, 88, 2])
