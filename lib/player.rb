require 'pry'

class Player
	attr_accessor :name, :life_points
	@@player = []

	def initialize(name_player)
		@life_points = 10
		@name = name_player
		@@player << self

	end

	def show_state
		puts "#{@name} a #{@life_points} points de vie."
			if @life_points <= 0
				puts "Le joueur #{@name} a été tué!"
			end
	end

	def gets_damage(dommage_points)
		@life_points = @life_points - dommage_points
			if @life_points <= 0
			@life_points = 0
			end
	end

	def attacks(player_attacked)
		damage = compute_damage
		puts "#{@name} attaque #{player_attacked.name}"
		player_attacked.gets_damage(damage)
		puts "#{player_attacked.name} perd #{damage} PV"
		player_attacked.show_state
		puts "\n"
	end


	def compute_damage 
		return rand(1..6)
	end

end