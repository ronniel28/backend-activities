def is_isogram(string)
  string = string.downcase()
  if string.length == 0
    true
  end
    
  for i in 0...string.length do
    if string[i+1..].include?(string[i])
      return false
    end
  end
  true
end