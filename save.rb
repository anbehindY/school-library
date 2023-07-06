def save_books
  updated_books = []

  @books.each do |book|
    updated_books << { 'title' => book.title, 'author' => book.author }
  end

  File.write('books.json', JSON.pretty_generate(updated_books))
end

def save_people
  update_people = []
  @people.map do |data|
    update_people << if data.instance_of?(Student)
                       { type: 'Student', name: data.name, age: data.age, id: data.id }
                     else
                       { type: 'Teacher', name: data.name, specialization: data.specialization, age: data.age,
                         id: data.id }
                     end
  end

  File.write('people.json', JSON.pretty_generate(update_people))
end

def save_rentals
  update_rentals = []

  @rentals.map do |data|
    update_rentals << {
      date: data.date,
      book: {
        author: data.book.author,
        title: data.book.title
      },
      person: {
        name: data.person.name,
        age: data.person.age,
        id: data.person.id
      }
    }
  end
  File.write('rentals.json', JSON.pretty_generate(update_rentals))
end

def save
  save_books
  save_people
  save_rentals
end
