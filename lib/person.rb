class Person 

    attr_reader :name,:hygiene
    attr_accessor  :happiness, :bank_account
    def initialize(name)
        @name= name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(value)
        @happiness = [0, [value, 10].min].max
      end
      

    def hygiene=(value)
        @hygiene = [0,[value,10].min].max
      end

#non-attribute method 
def happy?
    @happiness > 7
end 

def clean?
@hygiene >7
end 
 
def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
end 

def take_bath
    increment = [4, 10 - @hygiene].min
    self.hygiene = [0, [@hygiene + increment, 10].min].max
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  

def work_out
    decrement = [3, @hygiene].min
    self.hygiene -= decrement
    increment = [2, 10 - @happiness].min
    @happiness += increment
    '♪ another one bites the dust ♫'
  end
  
  

def call_friend(friend)
    "Hi Felix! It's Penelope. How are you?"
    increment = [3, 10 - @happiness].min
    @happiness += increment
    friend_increment = [3, 10 - friend.happiness].min
    friend.happiness += friend_increment
    
    

end 

def start_conversation(topic,friend)
    case topic
    when "politics"
      "blah blah partisan blah lobbyist"
      decrement = [2, @happiness].min
      self.happiness -= decrement
      friend_decrement = [2, friend.happiness].min
      friend.happiness -= friend_decrement
    when "weather" 
        "blah blah sun blah rain" 
      increment = [1, 10 - @happiness].min
      self.happiness +=  increment
      friend_increment = [1, 10 - friend.happiness].min
      friend.happiness += friend_increment
      
    else
      "blah blah blah blah blah"
    end

end 

