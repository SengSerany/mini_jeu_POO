
class Player
	attr_accessor :name, :life_points
	@@all_player = []

	def initialize(name_player)
		@life_points = 10
		@name = name_player
		@@all_player << self

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
		damage = compute_damage														#Enregistre la valeur "compute_damage" pour la réutiliser ensuite
		puts "#{@name} attaque #{player_attacked.name}"
		player_attacked.gets_damage(damage)
		puts "#{player_attacked.name} perd #{damage} PV"
		player_attacked.show_state
		puts "\n"																					# Crée un saut de ligne
	end


	def compute_damage 																	# Retourne une valeur aléatoire entre 1 et 6
		return rand(1..6)
	end

end

class HumanPlayer < Player
	attr_accessor :weapon_level

	def initialize(name_player)
		@life_points = 30
		@weapon_level = 1
		@name = name_player
	end

	def show_state
		puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{weapon_level}."
			if @life_points <= 0
				puts "Le joueur #{@name} a été tué!"
			end
	end

	def compute_damage 																	# Retourne une valeur aléatoire entre 1 et 6
		return rand(1..6) * @weapon_level
	end

	def search_weapon
		lvl_weapon = rand(1..6)
		puts "Tu as choppé un hachoir de niveau #{lvl_weapon}"
			if lvl_weapon > @weapon_level
				@weapon_level = lvl_weapon
				puts "GÉNIAL, le niveau de ce hachoir est relativement supérieur."
			else
				puts "Ton nouveau hachoir est chibré, laisse le tomber."
			end
		end

		def search_health_pack
			health_pack = rand(1..6)
				if health_pack == 1
					puts "Y a walou!"
				elsif health_pack >= 2 && health_pack <= 5
					health_pack = 50
					@life_points = health_pack + @life_points

						if @life_points > 100
							@life_points = 100
						end
					puts "Magnifïque, tu as trouvé un pack de +50PV, tu as maintenant #{life_points}PV"

				elsif health_pack == 6
					health_pack = 80
					@life_points = health_pack + @life_points
						if @life_points > 100
							@life_points = 100
						end
					puts "Magnifïque, tu as trouvé un pack de +80PV, tu as maintenant #{life_points}PV"
				end
		end
end