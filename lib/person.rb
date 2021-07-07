# your code goes here
class Person

    attr_accessor :happiness, :hygiene, :bank_account, :salary
    attr_reader :name


    def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25

    end

    def happiness=(happiness)
       if happiness > 10
        @happiness = 10
       elsif
        happiness < 0
        @happiness = 0
       else 
        @happiness = happiness

        end
    end

    def happy?
        if @happiness > 7
        happiness = true
        else
            @happiness < 7
            happiness = false
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
         @hygiene = 10
        elsif
         hygiene < 0
         @hygiene = 0
        else 
         @hygiene = hygiene
 
         end
     end

     def clean?
        if @hygiene > 7
        hygiene = true
        else
            @hygiene < 7
            hygiene = false
        end
    end

    def get_paid(salary)
        @bank_account += salary

        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.name
        self.happiness += 3
        friend.happiness += 3

       "Hi #{friend.name}! It's #{self.name}. How are you?"
        
    end

    def start_conversation(friend, topic)

        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else topic == "other"
            "blah blah blah blah blah"
        
        end
    end
end
