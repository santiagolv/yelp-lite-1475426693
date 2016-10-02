class ReviewRepliesController < ApplicationController
  def index
    @review_replies = ReviewReply.all
  end

  def show
    @review_reply = ReviewReply.find(params[:id])
  end

  def new
    @review_reply = ReviewReply.new
  end

  def create
    @review_reply = ReviewReply.new
    @review_reply.review_id = params[:review_id]
    @review_reply.owner_id = params[:owner_id]
    @review_reply.reply_content = params[:reply_content]

    if @review_reply.save
      redirect_to "/review_replies", :notice => "Review reply created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review_reply = ReviewReply.find(params[:id])
  end

  def update
    @review_reply = ReviewReply.find(params[:id])

    @review_reply.review_id = params[:review_id]
    @review_reply.owner_id = params[:owner_id]
    @review_reply.reply_content = params[:reply_content]

    if @review_reply.save
      redirect_to "/review_replies", :notice => "Review reply updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review_reply = ReviewReply.find(params[:id])

    @review_reply.destroy

    redirect_to "/review_replies", :notice => "Review reply deleted."
  end
end
