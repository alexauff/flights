class FlightsController < ApplicationController

	def index
		#récupération des données aéroports pour les associer au formulaire 
		@airports = Airport.all.map {|u| [u.airport_code]}
	end
end
