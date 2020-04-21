class PokemonsController < ApplicationController
    def index
        pokemons = Pokemon.all

        render json: pokemons
    end

    def create 
        byebug;
       newPoke = Pokemon.create(name: params["name"])
        render json: newPoke
    end
end
