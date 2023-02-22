class SportsController < ApplicationController

    skip_before_action :check_user

    rescue_from ActiveRecord::RecordNotFound, with: :render_sport_not_found_error

    def index
        sports = Sport.all
        render json: sports
    end

    def show
        sport = find_sport
        render json: sport
    end

    private

    def find_sport
        Sport.find(params[:id])
    end

    def render_sport_not_found_error
        render json: { errors: "Sport not found" }, status: :not_found
    end

end
