class CommentsController < ApplicationController

  def create
    @algo = Algo.find(params[:algo_id])
    @comment = @algo.comments.create(comment_params)
    if @comment.save
      flash[:notice] = "Comment Created!"
      respond_to do |format|
        format.html { redirect_to @algo }
        format.js
      end
    else
      flash[:error] = "Your Comment could not be created!"
      redirect_to @algo
    end
    # redirect_to algo_path(@algo)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
