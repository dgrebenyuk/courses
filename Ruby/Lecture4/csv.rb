require 'csv'

CSV.foreach('/home/dezder/1.csv') do |row|
  p row
end

File.open('/home/dezder/test.txt', 'w') do |f|
  f.write('Hello world')
end

hash = { key: :value }
p hash
