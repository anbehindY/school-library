require_relative '../classes/person'
require_relative '../classes/book'
require_relative '../classes/rental'

describe Person do
  context 'After typing in age, name and parent permission' do
    it 'should create a new person' do
      person = Person.new(17, 'Mike', parent_permission: true)
      expect(person).to be_a(Person)
      expect(person.name).to eq('Mike')
      expect(person.age).to eq(17)
    end
  end

  context 'After typing in age' do
    it 'should create a person with default name and parent_permission' do
      person = Person.new(17)
      expect(person.name).to eq('unknown')
      expect(person.parent_permission).to eq(true)
    end
  end

  context 'After choosing date and book' do
    it 'should create a new rental' do
      person = Person.new(22, 'Kanyo')
      book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
      rental = Rental.new('2021-01-01', book, person)
      person.add_rental(rental)
      expect(person.rentals[0].book).to eq(book)
    end
  end

  context 'When checking if person can use services' do
    it 'should return true if person is of age' do
      person = Person.new(22, 'Kanyo')
      expect(person.can_use_services?).to eq(true)
    end
  end
end
