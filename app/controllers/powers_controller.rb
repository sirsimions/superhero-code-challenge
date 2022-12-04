class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    protect_from_forgery with: :null_session #prevents cross-site request forgery (CSRF) attacks bug

    #GET/powers
    def index
        powers = Power.all
        render json: powers
    end
    #GET/powers/id
    def show
        power = Power.find(params[:id])
        render json: power
    end
    #PATCH/powers/id
    def update
        power = Power.find(params[:id])
        power.update!(power_params)
        render json: power
    rescue ActiveRecord::RecordInvalid => valid
        render json: { errors: valid.record.errors.full_messages }, status: :unprocessable_entity
    end

    private 

    def power_params
        params.permit(:name, :description)
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end
end
