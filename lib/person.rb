# your code goes here

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        @happiness = happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end
            

    def happy?
        if happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else
            return false
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

    def call_friend(friend)
        [friend, self].each do |x|
            x.happiness += 3
        end
            "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        object = [self, friend]
        if topic == "politics"
            object.each do |a|
                a.happiness -= 2
            end
            "blah blah partisan blah lobbyist"
        
        elsif topic == "weather"
            object.each do |a|
                a.happiness += 1
            end
            "blah blah sun blah rain"
            
        else 
            "blah blah blah blah blah"
        end
    end


end

sam = Person.new("Sam")
melissa = Person.new ("Melissa")

puts sam.happiness
puts sam.name
puts sam.bank_account
sam.start_conversation(melissa, "weather")
puts sam.happiness
puts melissa.happiness
melissa.get_paid(5000)
puts melissa.bank_account

