require_relative '../classes/book'
require_relative '../classes/rental'
require_relative '../classes/person'

describe Book do
  context 'After typing in title and author of the book' do
    it 'should create the book' do
      new_book1 = Book.new('Harry Potter', 'J.K. Rowling')
      expect(new_book1.title).to eq('Harry Potter')
      expect(new_book1.author).to eq('J.K. Rowling')
    end
  end

  context 'After choosing book and person' do
    it 'should create a rental and add it to the rentals array' do
      new_book2 = Book.new('Game of Thrones', 'George R. R. Martin')
      Person.new(18, 'John')
      rental = Rental.new('2021-01-01', new_book2, 'John Doe')
      new_book2.add_rental(rental)
      expect(new_book2.rentals[0].date).to eq('2021-01-01')
    end
  end
end
