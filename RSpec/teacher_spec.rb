require_relative '../classes/teacher'

describe Teacher do
  context 'After typing in age, name and specialization' do
    it 'should create a new teacher' do
      teacher = Teacher.new('Math', 22, 'Kanyo')
      expect(teacher).to be_a(Teacher)
      expect(teacher.id).to be_a(Integer)
      expect(teacher.name).to eq('Kanyo')
      expect(teacher.age).to eq(22)
      expect(teacher.specialization).to eq('Math')
    end
  end

  context 'When checking if teacher can use services' do
    it 'should return true if teacher is of age' do
      teacher = Teacher.new(22, 'Kanyo')
      expect(teacher.can_use_services?).to eq(true)
    end
  end
end
