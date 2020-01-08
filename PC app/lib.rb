def processText(file)
  filename = file.to_s
  lines = File.new(filename, chomp: true)
  lines.readlines
end

def normalize(text)
  letras_result = []
  arr = text.chomp.chars
  arr.each_with_index do |l, i|
    if l!="_"
      letras_result << [l, i]
    end
  end
  letras_result
end

def find(dic, term)
  line_result = normalize(term)
  success = []
  dic.each do |line|
    lt = line.chomp.length
    tt = term.chomp.size #criei essa variavel e adicionel o chomp
    if lt == tt
        match_result = []
        line_result.each do |item|
          match_result << (item[0] == line[item[1]])
        end
        success << line if (match_result.uniq.size == 1 and match_result[0]==true)
       
    end
  end
  success
end

def success?(dic, term)
  find(dic, term).size > 0 ? true : false
end