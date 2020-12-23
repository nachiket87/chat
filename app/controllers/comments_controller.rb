class CommentsController < ApplicationController
  before_action :set_article, only: %i[ new create]

  def new
    @comment = @article.comments.new
  end

  def create
    @comment = @article.messages.create!(comment_params)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @article }
    end
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def message_params 
    params.require(:comment).permit(:content)
  end
end
