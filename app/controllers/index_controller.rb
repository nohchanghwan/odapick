class IndexController < ApplicationController


  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(title: params[:title],po_content: params[:content])
    @post.save
     redirect_to :back
  end

  def edit
  end

  def new
  end

  def destroy
  end

end
