    class Person
        attr_reader :first, :last , :age, :type
        def initialize(first, last, age, type)
            @first_name = first
            @last_name = last
            @age = age
            @type = type
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
            puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        end
    end
    
    
    class Teacher < Person

        def talk
            puts "Bienvenidos a la clase de programación con Ruby!"
        end
        def introduce
            puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        end
    end

    class Parent< Person

        def talk
            puts "Aquí es la reunión de apoderados?"
        end
        def introduce
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
        end
    end

    a = Parent.new('Fabian','Salas','35','estudiantes')

    pp a.talk
    pp a.introduce