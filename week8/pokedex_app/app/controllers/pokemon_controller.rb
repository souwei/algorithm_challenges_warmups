class PokemonController < ApplicationController
  def new
  end

  def create
    pokemon = Pokemon.new
    pokemon.nickname = params[:name]
    if pokemon.valid?
      raise "validation failed"
    end

    if params[:species].blank? || params[]
      raise "empty"
    end
    # pokemon = Pokemon.new
    # pokemon.species = params[:species]
    # pokemon.nickname = params[:name]
    # pokemon.level = params[:level]
    # pokemon.image_url = params[:image_url]
    # if pokemon.save
    #   redirect_to '/pokemon/'
    # else
    #   raise pokemon.errors
    #   @errors.messages
    # end
  end

  def delete
  end

  def edit
  end

  def index
    pokemon_list = Pokemon.all
    @pokemons = pokemon_list
  end
end
