f = File.open('./counties/04-kent/kent-president.txt')
data = f.read
data.gsub!(',', '')
data.gsub!(/\t/, ',')

File.open("./counties/04-kent/kent-president.txt", 'w') do |f|
  f.write(data)
end
