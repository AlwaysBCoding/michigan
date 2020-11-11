f = File.open('./counties/13-st-clair/st-clair-president.txt')
data = f.read
data.gsub!(',', '')
data.gsub!(/\t/, ',')

File.open("./counties/13-st-clair/st-clair-president.txt", 'w') do |f|
  f.write(data)
end
