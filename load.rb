def loaded_rentals
  if File.exist?('rentals.json')
    load_rentals = File.read('rentals.json')
    json_rentals = JSON.parse(load_rentals, symbolize_names: true)
  else
    json_rentals = []
    File.write('rentals.json', '[]')
  end

  return if json_rentals.empty?

  json_rentals.each do |rental|
    person = Person.new(rental[:person][:age], rental[:person][:name])
    book = Book.new(rental[:book][:title], rental[:book][:author])
    @rentals << Rental.new(rental[:date], book, person)
  end
end

def loaded_book
  if File.exist?('books.json')
    load_books = File.read('books.json')
    json_books = JSON.parse(load_books)
  else
    File.write('books.json', [])
    json_books = []
  end

  return if json_books.empty?

  json_books.map do |book|
    @books << Book.new(book['title'], book['author'])
  end
end

def loaded_people
  if File.exist?('people.json')
    load_people = File.read('people.json')
    json_people = JSON.parse(load_people)
  else
    File.write('people.json', '[]')
    json_people = []
  end

  return if json_people.empty?

  json_people.each do |person|
    @people << if person['type'] == 'Student'
                 Student.new(nil, person['age'], person['name'])
               else
                 Teacher.new(person['specialization'], person['age'], person['name'])
               end
  end
end
