def pick_random_adj
  chosen_line = nil
  File.open './adjectives.txt' do |file|
    file.each_with_index do |adj1, index|
      chosen_line = adj1 if rand < 1.0/(index+1)
    end
    return chosen_line.chomp
  end
end

def pick_random_profession
  chosen_line = nil
  File.open './profession.txt' do |file|
    file.each_with_index do |profession, index|
      chosen_line = profession if rand < 1.0/(index+1)
    end
    return chosen_line.chomp
  end
end


class Username
  @adj1 = []
  @adj2 = []
  @profession = []

  def initialize(adj1, adj2, profession)
    @adj1 = adj1.capitalize
    @adj2 = adj2.capitalize
    @profession = profession
  end

  def print_username
    puts "\nYour username is #{@adj1}#{@adj2}#{@profession}"
    File.open("username_logger.txt", "a") { |file| file.puts "#{@adj1}#{@adj2}#{@profession}\n"}
  end

end

game = Username.new(pick_random_adj, pick_random_adj, pick_random_profession)

puts game.print_username