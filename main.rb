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

def main
  app = App.new
  input = nil
  until input == 7
    operations_list
    input = gets.chomp.to_i
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
    when 7
      break
    else
      puts 'Invalid option, please try again'
    end
  end
end

main