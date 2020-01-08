#word = "Abacaxi"

#if 
    #word.include? "A" and word.include?  "c" and word.include? "x"
    #puts "match"

#else
    #puts "no match"
#end
#=================================== 
#def processText(file)
    #fileName = file.to_s
    #lines = File.readlines(fileName)
    #linecount = lines.size 
    #text = lines.join
    #if text.include? "baction"
    #    puts "match"
    #else 
     #   puts "no match"
    #end
#end 
#processText("Dicionario.txt")

# objeto = [1,2,3,4,5,6,7,8,9,"a","b","c", nil]
# puts objeto.grep(3..7)
def normalize(text)
    letras_result = []
    arr = text.chomp.chars
    arr.each_with_index do |l, i|
      if l!="_"
        letras_result << [l, i]
      end
    end
  end
  
  
  letras = gets
  puts letras_result