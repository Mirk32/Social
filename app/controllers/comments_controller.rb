class CommentsController < ApplicationController
  def create
    @comment = current_user.becomes(User).comments.build(content: params[:content], post_id: params[:post_id])
    if @comment.save
      flash[:success] = 'Даннi збережено успiшно!'
    else
      flash[:danger] = 'Даннi не збережено! - ' + @comment.errors.full_messages.to_s
    end
    redirect_to post_path(params[:post_id])
  end

  def edit
    @comment = Comment.find(params[:id])
    render :edit
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:success] = 'Даннi збережено успiшно!'
    else
      flash[:danger] = 'Даннi не збережено! - ' + @comment.errors.full_messages.to_s
    end
    redirect_to post_path(@comment.post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:success] = 'Коментар видалено успiшно!'
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
