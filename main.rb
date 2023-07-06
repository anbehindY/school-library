require_relative 'app'

def operations_list
  puts "\nWelcome to School library app!"
  puts "\nPlease choose an option by entering a number:"
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a book'
  puts '4 - Create a person'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  puts ''
  print 'Enter a number: '
end

def take_action(app, input)
  case input
  when 1
    app.list_books
  when 2
    app.list_people
  when 3
    app.create_book
  when 4
    app.create_person
  when 5
    app.create_rental
  when 6
    app.list_rentals
  end
end

def main
  app = App.new
  app.load
  loop do
    operations_list
    input = gets.chomp.to_i
    take_action(app, input)
    if(input === 7)
      app.save
      break
    end
  end
  
  
end

main
