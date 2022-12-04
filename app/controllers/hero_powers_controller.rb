class HeroPowersController < ApplicationController
    protect_from_forgery with: :null_session #prevents cross-site request forgery (CSRF) attacks bug

    def create
        hero_power = HeroPower.create!(hero_power_params)
        hero= Hero.find(params[:hero_id])
        render json: hero
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
    
    private 
    
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
    
end



