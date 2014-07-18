class Dessert

  attr_reader :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    if @calories < 200
      true
    else
      false
    end
  end

  def delicious?
   true
  end
end

class JellyBean < Dessert

 attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name,calories)
    @flavor = flavor
  end

  def delicious?
    @flavor == "black licorice" ? false : true
  end
end