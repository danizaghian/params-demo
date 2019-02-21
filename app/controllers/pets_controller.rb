class PetsController < ApplicationController
	def index
		@pets = Pet.all

		@species = params[:species]
		if @species
			@pets = @pets.where(species: @species)
		end

		@breed = params[:breed]
		if @breed
			@pets = @pets.where(breed: @breed)
		end

		render 'index.html.erb'
	end
end
