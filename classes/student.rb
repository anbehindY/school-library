require_relative 'person'

class Student < Person
  def initialize(classroom, age, parent_permission: true, name = 'unknown')
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
