def processText(file)
    filename = file.to_s
    lines = File.new(filename, chomp: true)
    lines.readlines
    # linecount = file.size
    # lines.join  
    #puts linecount.to_s + " linhas"
    #puts text
end 

#processText("words_alpha.txt")


# puts "O que você ja formou da palavra? Use _ para espaços em branco"
letras = gets

dic = processText("words_alpha.txt")
arr = letras.chomp.chars

letras_result = []
arr.each_with_index do |l, i|
    if l!="_"
        letras_result << [l, i]
    end
end

dic.each do |line|
    if line.chomp.length == arr.size 
        # puts line
        match_result = []
        
        letras_result.each do |item|
            # puts "#{line.chomp} - #{item[0]} - #{line.chomp[item[1]]}"
            match_result << (item[0] == line[item[1]])
        end
        success = (match_result.uniq.size == 1 and match_result[0]==true)
        if success
            puts line
        end
    end
end