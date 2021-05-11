require 'faker'

puts "Creating seeds..."
10.times do 
  title = Faker::Lorem.sentence(word_count: 2)
  details = Faker::Lorem.sentence(word_count: 3, supplemental: true, random_words_to_add: 4)

  Task.create(title: title, details: details)
end

puts "Finished"
