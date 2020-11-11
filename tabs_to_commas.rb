f = File.open('./counties/24-midland/midland-straight-party.txt')
data = f.read
data.gsub!(',', '')
data.gsub!(/\t/, ',')

File.open("./counties/24-midland/midland-straight-party.txt", 'w') do |f|
  f.write(data)
end
