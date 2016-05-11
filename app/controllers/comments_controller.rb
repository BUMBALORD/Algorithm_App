class CommentsController < ApplicationController

  def create
    @algo = Algo.find(params[:algo_id])
    @comment = @algo.comments.create(comment_params)
    redirect_to algo_path(@algo)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
