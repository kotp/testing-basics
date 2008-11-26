#!/usr/bin/env ruby -w

class Dog
  attr_accessor :name, :pacifist
  
  def self.snore
    "<<fall asleep snoring like an owl>>"
  end

  def initialize(name, pacifist = false)
    @name = name
    @pacifist = pacifist
  end
  
  def bark
    "<<warf! warf!>>"
  end
  
  def eat
    "<<slurp!!!>>"
  end
  
  def chase_cat
    @pacifist ? "<<crossed her paws on her eyes as a sign of disapproval>>" : "<<grrr!!!>>"
  end
end

module Wag
  def wag
    "<<with a wage of her tail>>"
  end
  def taping
    "<<tap, tap, tap>>"
  end
end

class Zita < Dog
  def initialize(name="Zita", pacifist = true)
    super
  end
  
  def fetch_newspaper
    "go and fetch <<Le Monde>>"
  end
  
  def breed(str)
    str
  end
  
  def bark
    "<<wouf! wouf!>>"
  end
  
  def method_missing(method)
    str = method.id2name 
    breed(str)
  end
  
  include Wag
end

if __FILE__ == $0
d = Dog.new('Leo')
dd = Zita.new
puts "When I returned home #{d.name} and #{dd.name} " +
"welcomed me with great #{d.bark} and #{dd.bark}. Soon I gave them " +
"some food and they began to eat quietly with huge " +
"#{d.eat} when a cat came in. As soon as #{d.name} " +
"saw her, he chased her with threatening #{d.chase_cat}, " + 
"meanwhile #{dd.name}, which is a #{dd.pacifist} pacifist " +
"#{dd.boxer}, #{dd.chase_cat}. I was so angry with #{d.name}, " +
"that I shouted at him with many " + 
"#{d.name="<<Leo, the most stupid dog in the world!>>"}. " + 
"After a while he returned to me with such innocent " +
"eyes that I could not resist and named him again " + 
"#{d.name="Leo"}. He then #{Dog::snore}. It was when " +
"#{dd.name} taped frenetically at the door #{dd.taping} " +
"#{dd.wag} to make me understand that she wanted me to " +
"take her out. So, we went outside and as we came near " +
"the newspaper kiosk I told here to #{dd.fetch_newspaper}."
end