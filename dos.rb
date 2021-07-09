module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
        'Estoy nadando!'
        end
        def sumergir
        'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
end

module Alimentacion
        module Herbivoro
            def comer
            'Puedo comer plantas!'
            end
        end
        module Carnivoro
            def comer
            'Puedo comer carne!'
            end
        end
        module Omnivoro
            def comer
                'Puedo comer carne y plantas'
            end
        end
end


class Animal
    attr_reader  :nombre
    def initialize (nombre)
        @nombre = nombre
    end
end


class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end


class Pinguino < Ave
    include Habilidades::Caminante, Habilidades::Nadador, Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Caminante, Habilidades::Volador, Alimentacion::Carnivoro
end

class Pato < Ave
    include Habilidades::Caminante, Habilidades::Volador, Alimentacion::Omnivoro
end

class Perro < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante, Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante, Alimentacion::Herbivoro
end

class Mosca < Insecto
    include Habilidades::Volador,Habilidades::Caminante,Alimentacion::Omnivoro
end

class Mariposa < Insecto
    include Habilidades::Volador,Habilidades::Caminante,Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador,Habilidades::Caminante,Alimentacion::Herbivoro
end


ave1 = Pinguino.new('Fabian')
ave2 = Paloma.new('Fabian')
ave3 = Pato.new('Fabian')
mamifero1 = Perro.new('Fabian')
mamifero2 = Gato.new('Fabian')
mamifero3 = Vaca.new('Fabian')
insecto1 = Mosca.new('Fabian')
insecto2 = Mariposa.new('Fabian')
insecto3 = Abeja.new('Fabian')

pp ave3.aterrizar
