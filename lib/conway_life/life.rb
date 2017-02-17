class Life
  def initialize(initial_state)
    @state = initial_state
  end
  
  def tick
    # neighbor_counts = {}
    all_cells = Set.new
    # next_state = @state.dup
    @state.each do |cell|
      (-1..1).each do |dx|
        (-1..1).each do |dy|
          next if [dx, dy] == [0, 0]
          all_cells << [cell[0] + dx, cell[1] + dy]
        end
      end
    end
    
    all_cells.merge(@state)

    next_state = Set.new

    all_cells.each do |cell|
      alive_count = 0
      (-1..1).each do |dx|
        (-1..1).each do |dy|
          next if [dx, dy] == [0, 0]
          alive_count += 1 if @state.include?([cell[0] + dx, cell[1] + dy])
        end
      end
        next_state << cell if [2,3].include?(alive_count)
      if @state.include?(cell)
        next_state << cell if alive_count = 2
      else
      end
      
    end

    @state = next_state.to_a
  end
  
end
