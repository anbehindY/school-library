require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

class App 
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end
  
  def list_people
    @people.each do |person|
      puts "Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def list_rentals(person_id)
    @rentals.each do |rental|
      if rental.person.id = person_id
        puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.title}"
      end
    end
  end

  def create_student(age, name, parent_permission)
    student.new(age, name, parent_permission) << @people
    puts "Student created successfully"
  end

  def create_teacher(age, name)
    teacher.new(age, name) << @people
    puts "Teacher created successfully"
  end

  def create_book(title, author)
    book.new(title, author) << @books
    puts "Book created successfully"
end  
