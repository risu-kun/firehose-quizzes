class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def create
		@comment = Comment.create(comment_params)
		redirect_to root_path
	end

	private
	def comment_params
		params.require(:comment).permit(:author, :contents)
	end

end
