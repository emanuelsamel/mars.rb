class Mars

  def initialize
    @x_coordinate = rand(1..9)
    @y_coordinate = rand(1..9)
    @direction    = "N"
  end

  def read_instruction(instruction)
    input = instruction.split("")
    input.each do |letter|
      if letter == "M"
        move
      elsif letter == "R"
        turn("R")
      elsif letter == "L"
        turn("L")
      else
        puts "INVALID! Move forward (M), turn right (R), or turn left(L)."
      end
    end
    puts position
  end

  def move
    if @direction == "N"
      @y_coordinate += 1
    elsif @direction == "E"
      @x_coordinate += 1
    elsif @direction == "S"
      @y_coordinate -= 1
    else @direction == "W"
      @x_coordinate -= 1
    end
  end

  def turn(right_or_left)
    if right_or_left == "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "E"
        @direction = "S"
      elsif @direction == "S"
        @direction = "W"
      else @direction == "W"
        @direction = "N"
      end
    else right_or_left == "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "E"
        @direction = "N"
      elsif @direction == "S"
        @direction = "E"
      else @direction == "W"
        @direction = "S"
      end
    end
  end

  def position
    puts "X: #{@x_coordinate}, Y: #{@y_coordinate}, Direction: #{@direction}"
  end

end
