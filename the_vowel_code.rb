def encode(s)
    vowels = "aeiou".chars
       result = []
       s.chars.each do |character|
         if vowels.include?(character)
           if character == "a"
              result << "1"
           elsif character == "e"
             result << "2"
           elsif character == "i"
             result << "3"
           elsif character =="o"
             result << "4"
           else
             result << "5"
           end
         else
           result << character
         end
       end
       result.join("")
   end
   
   
   
   def decode(s)
     number = "12345".chars
       result = []
       s.chars.each do |character|
         if number.include?(character)
           if character == "1"
              result << "a"
           elsif character == "2"
             result << "e"
           elsif character == "3"
             result << "i"
           elsif character =="4"
             result << "o"
           else
             result << "u"
           end
         else
           result << character
         end
       end
       result.join("")
   end