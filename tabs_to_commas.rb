f = File.open('./counties/26-van-buren/van-buren-straight-party.txt')
data = f.read
data.gsub!(',', '')
data.gsub!(/\t/, ',')

File.open("./counties/26-van-buren/van-buren-straight-party.txt", 'w') do |f|
  f.write(data)
end
