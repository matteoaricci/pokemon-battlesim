# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'poke-api-v2'
Pokemon.delete_all
# Move.delete_all

pokedex = PokeApi.get(pokedex: '3').pokemon_entries
pokemon = PokeApi.get(pokemon: 1)

i = 1
# while i <= 251 do
#     move = PokeApi.get(move: i)
#     move_name = move.name
#     move_accuracy = move.accuracy
#     move_powerpoints = move.pp 
#     move_power = move.power
#     type = move.type.name 
#     move_damage = move.damage_class.name 
#     Move.create(name: move_name, accuracy: move_accuracy, power_points: move_powerpoints, power: move.power, damage_class: move_damage, move_type: type)
#     i+= 1
# end
pokedex.each do |poke|
    Pokemon.create(name: poke.pokemon_species.name, url: poke.pokemon_species.url)
end

pokemon.moves.each do |poke|
poke.version_group_details.each do |version|
        if version.version_group.name == 'crystal'
            pp poke.move.name
            theMove = Move.find_by(name: poke.move.name)
            # pp Pokemon.find_bay(name: poke.name)
            pp theMove['id']
        end
    end
end