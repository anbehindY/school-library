require_relative 'nameable'

class Decorator < Nameable
attr_accessor :nameable

  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    word = @nameable.correct_name
    if word.length > 10
      word.slice(0, 10)
    else
      word
    end
  end
end