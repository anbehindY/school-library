require_relative '../classes/rental'

describe Rental do
  context 'When initialized' do
    it 'should have a date, book and person' do
      date = '2015-12-01'
      book = Book.new('Eloquent JavaScript', 'Marijn Haverbeke', '2014-12-14')
      person = Person.new(18, 'John')
      rental = Rental.new(date, book, person)
      expect(rental.date).to eq(date)
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(person)
    end
  end

  context 'When book is assigned' do
    it 'should add the rental to the book' do
      date = '2015-12-01'
      book = Book.new('Eloquent JavaScript', 'Marijn Haverbeke', '2014-12-14')
      person = Person.new(18, 'John')
      rental = Rental.new(date, book, person)
      expect(book.rentals).to include(rental)
    end
  end

  context 'When person is assigned' do
    it 'should add the rental to the person' do
      person = Person.new(18, 'John')
      date = '2015-12-01'
      book = Book.new('Eloquent JavaScript', 'Marijn Haverbeke', '2014-12-14')
      rental = Rental.new(date, book, person)
      expect(person.rentals).to include(rental)
    end
  end
end
