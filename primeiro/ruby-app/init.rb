def processText(file)
  filename = file.to_s
  lines = File.new(filename, chomp: true)
  lines.readlines
end


letras = gets

dic = processText("Dicionario.txt")
arr = letras.chomp.chars

letras_result = []
arr.each_with_index do |l, i|
    if l!="_"
        letras_result << [l, i]
    end
end

dic.each do |line|
    if line.chomp.length == arr.size
        match_result = []

        letras_result.each do |item|
            match_result << (item[0] == line[item[1]])
        end
        success = (match_result.uniq.size == 1 and match_result[0]==true)
        if success
            puts line
        end
    end
end
