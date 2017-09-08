class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end
end

class Speedster < SuperHero
  def powers
    "She can run so fast that she can hydroplane clear across the Atlantic."
  end

  def weakness
    "Epic chub rub"
  end

  def backstory
    "She and The Flash hooked up once. It was over *very* quickly."
  end

  def speed_in_mph
    (super * 1000)
  end
end

class Brawler < SuperHero
  def health
    (super * 20)
  end

  def powers
    "He has the strength of 100 powerlifters and is a master of Krav Maga!"
  end

  def weakness
    "Hormonal imbalance from long-term anabolic steroid use."
  end

  def backstory
    "When he was 8, he kicked a guy so hard that the poor sap achieved orbit. The rest is history."
  end
end

class Detective < SuperHero
  def powers
    "He has the powers of observation and...detection."
  end

  def weakness
    @secret_identity
  end

  def backstory
    "He's weary from years spent harassing minorities."
  end

  def speed_in_mph
    (super / 6)
  end
end

class Demigod < SuperHero
  def backstory
    "She has lived for thousands of years in various places, always worshipped and feared."
  end

  def powers
    "She can create and destroy matter at will."
  end

  def weakness
    "Uncontrollable wrath. She has a tendency to wipe out entire civilizations if/when one of their members attempts to mansplain her."
  end

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero
  def powers
    "Mind control, telekinesis, power of flight, and Ruby coding."
  end

  def weakness
    "Unable to resist chocolate, regardless of who offers it and how much."
  end

  def backstory
    "Traveled to Earth for vacation but crashed her ship."
  end

  def species
    "Alien"
  end

  def home
    "Venus"
  end
  def psychic?
    true
  end
end

class WaterBased < SuperHero

  def powers
    "He can control water in large amounts or at the molecular level."
  end

  def weakness
    "Sponges!!"
  end

  def backstory
    "This son of Poseidon digs surfing and hanging out with those deep water alien people from 'The Abyss'."
  end

  def fans_per_thousand
    5
  end

  def home
    "Earth's Oceans"
  end

  def psychic?
    true
  end
end
