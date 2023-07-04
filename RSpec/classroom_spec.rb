require_relative '../classes/classroom'
require_relative '../classes/student'

describe Classroom do
  context 'when initialized' do
    it 'should have a label' do
      classroom = Classroom.new('A')
      expect(classroom.label).to eq('A')
    end
  end

  context 'when adding students' do
    it 'should have students' do
      classroom = Classroom.new('A')
      student = Student.new('A', 12, 'John')
      classroom.add_student(student)
      expect(classroom.students).to include(student)
    end
  end
end
