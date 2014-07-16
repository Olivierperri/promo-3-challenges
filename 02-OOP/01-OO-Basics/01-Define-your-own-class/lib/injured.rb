class Injured
  attr_accessor :name
  attr_accessor :weight


  def initialize(name, weight)
    @name     = name
    @health   = "injured"
    @weight   = weight
  end

  def training
    @weight -= 10
  end

  def medical
    @health = "OK"
  end
end


