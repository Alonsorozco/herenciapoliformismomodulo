    class Person
        attr_reader :first_name, :last_name , :age
        def initialize(first, last, age)
            @first_name = first
            @last_name = last
            @age = age
        end
        def birthday
            @age += 1
        end
            
    end
    
    class Student < Person
        def talk
         puts "Bienvenidos a la clase de programación con Ruby!"
        end
        def introduce 
            puts "Hola alumnos. Mi nombre es #{self.first} #{self.last}."
        end
    end
    
    
    class Teacher < Person

        def talk
            puts "Bienvenidos a la clase de programación con Ruby!"
        end
        def introduce
            puts "Hola alumnos. Mi nombre es #{self.first} #{self.last}."
        end
    end

    class Parent < Person

        def talk
            puts "Aquí es la reunión de apoderados?"
        end
        def introduce
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{self.first_name} #{self.last_name}."
        end
    end

    padre1 = Parent.new('Fabian','Salas','35')
    profe1= Teacher.new('Fabian','Salas','35')
    estudiante1 = Student.new('Fabian','Salas','35')

puts padre1.talk
puts profe1.talk
puts estudiante1.talk
puts padre1.introduce