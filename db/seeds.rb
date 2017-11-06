# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#créer des codes aéroports à la mano
# Airport.create(airport_code: "CDG")
# Airport.create(airport_code: "CCO")
# Airport.create(airport_code: "AMS")
# Airport.create(airport_code: "BCN")
# Airport.create(airport_code: "LIS")
# Airport.create(airport_code: "MAD")
# Airport.create(airport_code: "FCO")
# Airport.create(airport_code: "ATH")
# Airport.create(airport_code: "BRU")
# Airport.create(airport_code: "RAK")

#ou bien :
#vide les tables airport et flight
Airport.destroy_all
Flight.destroy_all

#boucle pour sélectionner codes IATA aléatoires
10.times do |n|
	Airport.create(airport_code: "AFO n°#{n}")
end

#récupère tous les aéroports
all_airports = Airport.all

#sauvegarde nombre d'aéroports crées - 1
index = all_airports.length - 1

#boucle pour sélectionner au hasard un aéroport de départ et d'arrivée
9.times do
  departure_airport = all_airports[rand(0..index)]
  arrival_airport = all_airports[rand(0..index)]
  #aller à prochaine itération si l'aéroport de départ sélectionné est le même que l'aéroport d'arrivée
  next if departure_airport == arrival_airport
	  Flight.create(departure_date: rand(7.days).seconds.from_now,
	  							duration: rand(500),
	                departure_airport: departure_airport,
	                arrival_airport: arrival_airport)
end
