require_relative '../classes/student'
require_relative '../classes/classroom'

describe Student do
  context 'After typing in student classroom, age, name, and parent permission' do
    it 'should create a student object' do
      student = Student.new('A', 18, 'John Doe')
      expect(student).to be_a(Student)
      expect(student.classroom).to eq('A')
    end
  end

  context 'Testing play_hooky method' do
    it 'should return ¯\(ツ)/¯' do
      student = Student.new('A', 18, 'John Doe')
      expect(student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end

  context 'Testing classroom= method' do
    it 'should return the classroom' do
      student = Student.new('A', 18, 'John Doe')
      classroom = Classroom.new('A')
      student.classroom = classroom
      expect(student.classroom).to eq(classroom)
    end
  end
end
