# your code goes here
require "pry"
class Person

attr_accessor
attr_reader :name, :bank_account

@@all = []
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_index = 8
    @hygiene = 8
@@all << self

end

def call_all
    @@all
end


def bank_account=(bank_account)
    @bank_account = bank_account
end

def happiness
@happiness_index
end

def happiness=(happiness_index)
    @happiness_index = happiness_index
    if @happiness_index > 10
        @happiness_index = 10
    elsif @happiness_index < 0
        @happiness_index = 0
    else
        @happiness_index
    end
end
 
def hygiene
    @hygiene
end

def hygiene=(hygiene)
  @hygiene = hygiene
  if @hygiene > 10
     @hygiene = 10
  elsif @hygiene < 0 
        @hygiene = 0
  else 
    return @hygiene
  end

end

def happy?
    @happiness_index > 7 ? true : false
end

def clean?
@hygiene > 7 ? true : false
end

def get_paid(salary)
@bank_account += salary
return "all about the benjamins"
end

def take_bath
   @hygiene += 4
   self.hygiene = hygiene

     "♪ Rub-a-dub just relaxing in the tub ♫"
    
end

def work_out
    @hygiene -= 3
    @happiness_index +=2
    self.hygiene = hygiene
    self.happiness = happiness
    return "♪ another one bites the dust ♫"

end

def call_friend(call_all)
    call_all.happiness += 3
    self.happiness +=3
  
    if call_all.name 
  return "Hi #{call_all.name}! It's #{self.name}. How are you?"
   
end
end


def start_conversation(friend, topic)
    
    if topic == "politics"
        friend.happiness -= 2
        self.happiness -= 2
      return "blah blah partisan blah lobbyist"  

    elsif topic == "weather"
        friend.happiness += 1
        self.happiness += 1
return "blah blah sun blah rain"

    else
        return "blah blah blah blah blah"
    end

end



end