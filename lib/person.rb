require 'pry'

class Person

attr_reader :name
#attr_writer 
attr_accessor :happiness, :hygiene, :bank_account
    

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
       hygiene > 7
    end

    def hygiene
        if @hygiene > 10 
            @hygiene = 10 #instance method
        end
        if @hygiene < 0 
            @hygiene = 0
        end
        @hygiene #instancemethod
    end

    def happiness
        if @happiness > 10 
            @happiness = 10 #instance method
        end
        if @happiness < 0 
            @happiness = 0
        end
        @happiness #this is a n instance method
    end

    def happy?
         happiness > 7 
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness +=2
        self.hygiene -=3
       return  "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(friend,topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            return "blah blah partisan blah lobbyist"

        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    
    end
end