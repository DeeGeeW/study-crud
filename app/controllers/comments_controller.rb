class CommentsController < ApplicationController
  def index
    comments = Comment.all
    render json: comments.as_json
  end

  def create
    comment = Comment.new(
      user_id: params[:user_id],
      comment: params[:comment],
      state: params[:state],
      bird_name: params[:bird_name],
      image: params[:image],
      chirp: params[:chirp]
    )
    comment.save
    render json: comment.as_json
  end

  def show
    comment = Comment.find_by(id: params[:id])
    render json: comment.as_json
  end

  def update
    comment = Comment.find_by(id: params[:id])
    comment.user_id = params[:user_id] || comment.user_id
    comment.comment = params[:comment] || comment.comment
    comment.state = params[:state] || comment.state
    comment.bird_name = params[:bird_name] || comment.bird_name
    comment.image = params[:image] || comment.image
    comment.chirp = params[:chirp] || comment.chirp
    comment.save
    render json: comment.as_json
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    comment.destroy
    render json: {message: "comment successfully destroyed."}
  end
end
