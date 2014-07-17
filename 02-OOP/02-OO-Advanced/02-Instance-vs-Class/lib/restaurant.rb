class Restaurant

  attr_reader :average_rating
  attr_accessor :city, :name
  #TODO add relevant accessors if necessary
  def initialize(city, name)
    @city = city
    @name = name
    @rate = []
    @average_rating = 0
    #TODO: implement constructor with relevant instance variables
  end

  def rate(grade)
    @rate << grade
    @average_rating = @rate.inject(:+) / @rate.size
  end

  def self.filter_by_city(restaurants, city)
    restaurants_list = []

    restaurants.each do |resto|
      if resto.city == city
        restaurants_list << resto
      end
    end

    restaurants_list
  end

end
  #TODO: implement #filter_by_city and #rate method
