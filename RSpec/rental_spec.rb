require_relative '../classes/rental'

describe Rental do
  context 'When initialized' do
    it 'should have a date, book and person' do
      book = Book.new('Eloquent JavaScript', 'Marijn Haverbeke')
      person = Person.new(18, 'John')
      rental = Rental.new('2015-12-01', book, person)
      expect(rental.date).to eq('2015-12-01')
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(person)
    end
  end

  context 'When book is assigned' do
    it 'should add the rental to the book' do
      book = Book.new('Eloquent JavaScript', 'Marijn Haverbeke')
      person = Person.new(18, 'John')
      rental = Rental.new('2015-12-01', book, person)
      rental.book = book
      expect(book.rentals).to include(rental)
    end
  end

  context 'When person is assigned' do
    it 'should add the rental to the person' do
      person = Person.new(18, 'John')
      date = '2015-12-01'
      book = Book.new('Eloquent JavaScript', 'Marijn Haverbeke')
      rental = Rental.new(date, book, person)
      rental.book = book
      expect(book.rentals).to include(rental)
    end
  end
end
