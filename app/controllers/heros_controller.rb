class HerosController < ApplicationController
    protect_from_forgery with: :null_session #prevents cross-site request forgery (CSRF) attacks bug

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        heroes = Hero.all
        render json: heroes , only:[:id, :name, :super_name]
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero.to_json(only:[:id, :name,:super_name], include: [powers: { only: [:id, :name, :description]}])
    end

    private 

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
      end
end


