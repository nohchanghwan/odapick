class BoardController < ApplicationController


    def index
      @posts = Post.all
    end

    def create #강호형스타일코딩
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

    def reply_create #두희대장스타일코딩
      reply = Reply.new
      reply.content = params[:content_of_re] #뒤에콘텐츠는 index 에서의 name값이다.
      reply.post_id = params[:post_of_re]
      reply.save
      redirect_to "/board/index"
    end

  end
