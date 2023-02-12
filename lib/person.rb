class Person 
    attr_reader :name, :hygiene
    attr_accessor :happiness, :bank_account
  
    def initialize(name)
      @name = name 
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end 
  
    def happiness=(value)
      @happiness = [[0, value].max, 10].min
    end
  
    def hygiene=(value)
      @hygiene = [[0, value].max, 10].min
    end
  
    def happy?
      @happiness > 7
    end 
  
    def clean?
      @hygiene > 7
    end 
  
    def get_paid(amount)
      @bank_account += amount
      "all about the benjamins"
    end 
  
    def take_bath
        increment = [4, 10 - @hygiene].min
        @hygiene = [[0, @hygiene + increment].max, 10].min
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
  
    def work_out
      decrement = [3, @hygiene].min
      @hygiene -= decrement
      @happiness = [[0, @happiness + [2, 10 - @happiness].min].max, 10].min
      '♪ another one bites the dust ♫'
    end
  
    def call_friend(friend)
      "Hi Felix! It's Penelope. How are you?"
      increment = [3, 10 - @happiness].min
      friend_increment = [3, 10 - friend.happiness].min
      self.happiness += increment
      friend.happiness += friend_increment
    end 
  
    def start_conversation(friend, topic)
      case topic
      when "politics"
        'blah blah partisan blah lobbyist'
        decrement = [2, @happiness].min
        friend_decrement = [2, friend.happiness].min
        self.happiness -= decrement
        friend.happiness -= friend_decrement
      when "weather" 
        'blah blah sun blah rain'
        increment = [1, 10 - @happiness].min
        friend_increment = [1, 10 - friend.happiness].min
        self.happiness += increment
        friend.happiness += friend_increment
      else
        "blah blah blah blah blah"
      end
    end 
  end
  
