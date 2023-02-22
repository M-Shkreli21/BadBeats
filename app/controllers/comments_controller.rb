class CommentsController < ApplicationController

    skip_before_action :check_user, only: [:create, :destroy]

    rescue_from ActiveRecord::RecordNotFound, with: :render_comment_not_found_error
    rescue_from ActiveRecord::RecordInvalid, with: :render_comment_invalid_error

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = find_comment
        render json: comment
    end

    def create
        new_comment = Comment.create!(comment_params)
        render json: new_comment, status: :created
    end

    def update
        comment = find_comment
        comment.update!(comment_params)
        render json: comment, status: :accepted
    end

    def destroy
        user = User.find_by(id: session[:user_id])
        comment = find_comment
        if user
            comment.destroy
            render json: {}
        else
            render json: { message: "Not Authorized" }, status: :unauthorized
        end
        
    end

    private

    def find_comment
        Comment.find(params[:id])
    end

    def comment_params
        params.permit(:post_body, :likes, :post_id, :user_id)
    end

    def render_comment_not_found_error
        render json: { errors: "Comment not found" }, status: :not_found
    end

    def render_comment_invalid_error(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
