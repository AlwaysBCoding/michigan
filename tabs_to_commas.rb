file_path = "./counties/09-kalamazoo/2016-kalamazoo-president.txt"

f = File.open(file_path)
data = f.read
data.gsub!(',', '')
data.gsub!(/\t/, ',')

File.open(file_path, 'w') do |f|
  f.write(data)
end
