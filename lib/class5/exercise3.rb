#ANSWER
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

#!/usr/bin/env ruby
#
#
5 points
#
# Replace the `records` and `database` methods with your solutions from
# exercises 1 and 2.
#
# Then write a program that saves the corporate buzzwords -- in YAML format --
# to anyone's `lib/class5/database.yml` file and displays the result.
#
# So if Tim runs this program successfully:
#
#   $ ruby exercise3.rb
#   Saved 5 records to /Users/tim/sea-c21-ruby/lib/class5/database.yml
#
# Then his database needs to contain the following YAML content:
#
#   $ cat database.yml
#    ---
#    - Incentivized methodologies
#    - Seemless innovation
#    - Corporate synergy
#    - Scalable globalization
#    - Monetized assets
#
# TIP: Read section 11.4 carefully.

require 'yaml'

def records
  ['replace me']
end

def database
  '/replace/me'
end

def save
  false # fix me
end

save

puts "Saved #{records.size} records to #{database}"
