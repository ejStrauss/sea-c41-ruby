#1
require 'yaml'

def records
  ['Re-engineering the office of now',
  'Dynamic new paradigm',
  'Global interconnectedness',
  'Envisioning the growth movement',
  'Spearheading scientific technologies']
end

puts records.to_yaml


#2

def database
  File.absolute_path('lib/class5/database.yml')
end

puts database


#3

require 'yaml'

def records
  ['Re-engineering the office of now',
  'Dynamic new paradigm',
  'Global interconnectedness',
  'Envisioning the growth movement',
  'Spearheading scientific technologies']
end

def database
  File.absolute_path('database.yml')
end

def save
  input = records.to_yaml
  location = database
  File.open location, 'w' do |x|
    x.write input
  end
  puts(read == input)
  puts(read_array == records)
end

save

puts "Saved #{records.size} records to #{database}"


#4

require 'yaml'

def database
  File.absolute_path('database.yml')
end

def load
  location = database
  read = File.read location
  read_array = YAML::load read
end

records = load

puts "Loaded #{records.size} records from #{database}"
puts records


#5
require 'yaml'

def database
  File.absolute_path('database.yml')
end

def load
  location = database
  read = File.read location
  read_array = YAML::load read
end

def find(id)
  load[id]
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb POSITIVE_INTEGER' unless input > 0

record = find(input)

if record
  puts "Found record ##{input} from #{database}"
  puts record
else
  puts "Could't find record ##{input} from #{database}"
end
