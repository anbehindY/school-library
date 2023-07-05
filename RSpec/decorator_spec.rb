require_relative '../classes/decorator'
require_relative '../classes/person'

describe Decorator do
  context 'when using capitalize decorators' do
    it 'should return the capitalized first letter' do
      person = Person.new(17, 'john')
      person = CapitalizeDecorator.new(person)
      expect(person.correct_name).to eq('John')
    end
  end

  context ' when using trimmer decorators' do
    it 'should return the trimmed name' do
      person = Person.new(17, 'John Maverick')
      person = TrimmerDecorator.new(person)
      expect(person.correct_name).to eq('John Maver')
    end
  end
end
