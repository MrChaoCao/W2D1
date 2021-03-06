# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue ArgumentError
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  # elsif maybe_fruit.downcase == "coffee"
  #   puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise CoffeeError
  else
    raise NotAFruitError
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue NotAFruitError => e
    puts e.message
  rescue CoffeeError => e
    puts e.message
    retry
  end
end

class CoffeeError < StandardError
  def message
    "I love coffee! But I want more fruit"
  end
end


class NotAFruitError < StandardError
  def message
    "That's not a fruit!! *monster face*"
  end
end

class NotACoffeeError < StandardError
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @fav_pastime = fav_pastime
    @yrs_known = yrs_known
    begin
      if @yrs_known < 5
        raise FakeBestFriendError
      end
    rescue FakeBestFriendError => e
      e.message
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be
    friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait,
    why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet.
    It says my name, #{@name}, so you never forget me."
  end
end

class FakeBestFriendError < StandardError
  def message
    puts "REAL friendships need five years to mature."
  end
end
