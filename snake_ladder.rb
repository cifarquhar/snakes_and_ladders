class SnakeLadder

 attr_reader :array

  def initialize(array)
    @array = array
  end

  def get_array_size
    return @array.count
  end

  def check_unique_start(element,array)
    return true if array == []
    for existing_element in array
      if existing_element[:start] != element[:start]
       return true
     else
      return false
     end
    end
  end



  def randomize_ladders
      
      end_counter = 8 #rand(4..14)
      while @array.count < end_counter
        start_value = rand(1..49)
        end_value = start_value + rand(1..50)
        ladder = {start: start_value, end: end_value}
       @array.push(ladder) if check_unique_start(ladder,@array) == true
     
      end

  end

  
  def randomize_snakes
      
      end_counter = 8 #rand(4..14)
      while @array.count < end_counter
        start_value = rand(50..99)
        end_value = start_value - rand(1..49)
        snake = {start: start_value, end: end_value}
       @array.push(snake) if check_unique_start(snake,@array) == true
     
      end

  end





end