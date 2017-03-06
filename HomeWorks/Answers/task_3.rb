require 'csv'

# Option 1
weather_hash = {}

CSV.foreach('/home/dezder/1.csv') do |row|
  weather_hash[key = row.first[/\d+\z/]] ||= []
  weather_hash[key] << row.last.to_i
end

puts 'Option 1'
puts '======================'
weather_hash.each do |k, v|
  puts "Average temperature for #{k} month: #{v.inject(:+).to_f / v.size}"
end

puts ''

# Option 2
weather = []

CSV.foreach('/home/dezder/1.csv') do |row|
  weather << [row.first.split('.').last, row.last.to_i]
end

hash = weather.group_by { |i| i.delete_at(0) }

puts 'Option 2'
puts '======================'
hash.each do |k, v|
  puts "Average temperature for #{k} month: " \
       "#{v.flatten!.inject(:+).to_f / v.size}"
end
