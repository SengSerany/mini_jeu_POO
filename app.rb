require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



def combat_d_infirme

player_1 = Player.new ("Serany")	# on ajoute directement les joueurs pour ne pas à avoir a les definir en paramètre
player_2 = Player.new ("Ugo")
life_points = 10

	puts "À ma droite #{player_1.name} : Valeureux guerrier de la Papouasie nouvelle guinée.
À ma gauche #{player_2.name} : la binocle pour les intimes.
"
	sleep(3) # Défini un temps en secondes avant l'affichage de la suite

	puts "#{player_1.name} et #{player_2.name} ont chacun #{life_points} points de vie
	Et ils vont se livrer à un combat sans merci"

	sleep (3)

	print "Seul "

	sleep(1)

	print "un "

	sleep(1)

	puts "survivra ... "

	sleep(1)



	puts "----------------------FIGHT !---------------------

8888888888888888888888888888______________________
8888888888888888888888888888______________________
8888888888888888888888888888____88________________
8888888888888888888__8888888____88________________
8888888888888888888__8888888____8_________________
8888888888888888888__888888____88_________________
8888888888888888888__888888____88_________________
8888888888888888888__888888____88_________________
8888888888888888888__888888____88_________________
8888888888888888888__888888____8__________________
8888888888888888888_888888_____88_________________
88888888888888888888888888________________________
88888888888888888888888888________________________
88888888888888888888888888________________________
8888888888888888888888888_________________________
888888888888888_________________________8_________
888888888888____888888888_______________8888______
888888888___8888888888888_____________888__8______
888888____888888888888888_________88888___________
8888888__8888888888888888____88888________________
88888888888888888888888888888_____________________
888888888888888888888888__________________________
888888888888888888888888__________________________
888888888888888888888888__________________________
888888888888888888888888__________________________
888888888888888888888888__________________________

--------------------------------------------------"

puts "\n"

sleep(2)

	while player_1.life_points != 0 || player_2.life_points != 0 #Tant que l'un des joueurs n'a pas atteint 0 pv la boucle continue
		player_1.attacks(player_2)
		sleep(3)
			break if player_2.life_points == 0

		player_2.attacks(player_1)
		sleep(3)
			break if player_1.life_points == 0
	end

puts "
░░░░░░░░░░░█▀▀░░█░░░░░░
░░░░░░▄▀▀▀▀░░░░░█▄▄░░░░
░░░░░░█░█░░░░░░░░░░▐░░░
░░░░░░▐▐░░░░░░░░░▄░▐░░░
░░░░░░█░░░░░░░░▄▀▀░▐░░░
░░░░▄▀░░░░░░░░▐░▄▄▀░░░░
░░▄▀░░░▐░░░░░█▄▀░▐░░░░░
░░█░░░▐░░░░░░░░▄░█░░░░░
░░░█▄░░▀▄░░░░▄▀▐░█░░░░░
░░░█▐▀▀▀░▀▀▀▀░░▐░█░░░░░
░░▐█▐▄░░▀░░░░░░▐░█▄▄░░░
░░░▀▀▄░░░░░░░░▄▐▄▄▄▀░░░
░░░░░░░░░░░░░░░░░░░░░░░

-----IL-EST-MORT-!-----"
end

combat_d_infirme
