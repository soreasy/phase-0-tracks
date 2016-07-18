# Virus Predictor

# I worked on this challenge with Eric Yang.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Effectively copies and pastes the contents of the passed file name, assuming the file name passed exists
# in the same directory as the working file. 
# It differs from require in that 'require' by itself needs the path/directory
# of the file to be required, whereas 'require_relative' searches the current directory

require_relative 'state_data'

class VirusPredictor

  # sets the state, population, and population_density attributes based on the passed arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # an instance method that calls the predicted_deaths and speed_of_spread instance methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  

  private
  # takes the population_density, population, and state attributes and based on their values determines the number
  # of deaths variable, also converting floats to ints (rounding down) with .floor
  # Then prints the result
  def predicted_deaths
    # predicted deaths is solely based on population density
    density = 200
    multiplier = 0.4
    while density >= 0
      if multiplier < 0.1
        number_of_deaths = (@population * 0.05)
        break
      elsif @population_density >= density
        number_of_deaths = (@population * multiplier)
        break
      end

      density = density - 50
      multiplier = multiplier - 0.1
    end



    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4)
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3)
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2)
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1)
    # else
    #   number_of_deaths = (@population * 0.05)
    # end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  # takes population_density and state attributes and based on the population_density value
  # increments the speed by a certain amount
  # Then prints the result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    density = 200
    speed = 0.0
    increment = 0.5

    while density >= 0
      if increment == 2.5
        speed = increment
        break
      elsif @population_density >= density
        speed = increment
        break
      end

      density = density - 50
      increment += 0.5
    end








    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each_key do |state|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section