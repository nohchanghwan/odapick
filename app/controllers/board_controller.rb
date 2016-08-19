class BoardController < ApplicationController


    def index
      @posts = Post.all
    end

    def create #강호형스타일코딩
      @post = Post.new(title:       params[:sub_title],
                       po_content:  params[:sub_content],
                       url:         params[:sub_url],
                       anniversary: params[:sub_anniday],
                       age_group:   params[:sub_agegroup],
                       gift_gender: params[:sub_giftgender],
                       money:       params[:sub_money]
                       )
      if @post.save #일반적인경우
       redirect_to :back
     else #만약 텍스트가없다면 에러메세지
       render :text => post.error.messages
      end
    end

    def submit
      @posts = Post.all
    end
    def master1
     @posts = Post.all
    end

    def edit
    end

    def new
    end

    def destroy
    end

    def reply_create #두희대장스타일코딩
      @replies = Reply.all.order("id desc")
      reply = Reply.new
      reply.re_content =    params[:content_of_re] #뒤에콘텐츠는 index 에서의 name값이다.
      reply.post_id =       params[:post_of_re]
      reply.present_point = params[:point]
      reply.save
      redirect_to "/board/index"
    end

    def gift_list
      @posts = Post.all
    end

  end
