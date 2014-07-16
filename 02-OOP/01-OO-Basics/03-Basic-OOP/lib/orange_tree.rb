class OrangeTree

  attr_reader :height, :fruits

  def initialize
    @height   = 0
    @age      = 0
    @fruits   = 0
    @dead     = false
  end


  def one_year_passes!
    @age += 1
    if @age <= 10
      @height +=1
    end
    update_fruits
  end

  def pick_a_fruit!
    @fruits -= 1
  end

  def dead?
    false
      if @age <= 50
         @dead = false
      elsif
        @age >= 51 && @age <= 99
        @dead = @dead || true
      else
        @age >= 100
        @dead = true
      end
  end

  private

  def update_fruits
    if @age <= 5
      @fruits = 0
    elsif @age >5 && @age <= 10
      @fruits = 100
    elsif @age >10 && @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

end


# TODO: Implement all the specs defined in the README.md :)