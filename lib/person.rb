# your code goes here
require 'pry'
class Person

    attr_reader :name, :happiness, :hygiene 
    attr_writer :bank_account
   


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(number)
        @happiness = number
        if number > 10
            @happiness = 10
        elsif number < 0
            @happiness = 0
        end
    end

    def hygiene=(number)
        @hygiene = number
        if number > 10
            @hygiene = 10
        elsif number < 0
            @hygiene = 0
        end
    end

    def happiness
        @happiness
    end

    def bank_account()
     @bank_account
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
            @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4  
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(argument)
        self.happiness += 3
        argument.happiness += 3
        "Hi #{argument.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)  
            if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                self.happiness += 1
            person.happiness += 1
                "blah blah sun blah rain"
            else topic == "other"
                "blah blah blah blah blah"
            end
    end

end