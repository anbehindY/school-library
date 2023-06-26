class Person
    attr_accessor :@name, :@age
    attr_reader :@id

    def initialize(name= "unknown", age , parent_permission= true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
    end

    def can_use_services?
        parent_permission || of_age?
    end

    private
    def of_age?
        @age >= 18
    end
end