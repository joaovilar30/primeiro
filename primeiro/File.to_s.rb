def processText(file)
    fileName = file.to_s
    lines = File.readlines(fileName)
    linecount = lines.size 
    text = lines.join
    
    puts "Number of Lines: #{linecount}"
    puts text
end 
processText("Teste6.txt")