class UserController < ApplicationController

  def index
    @users = User.all
  end

  def join
    user = User.new(email_id:  params[:register_emailId],
                      password:  params[:register_password],
                      name:      params[:register_name],
                      gender:    params[:register_gender],
                      birth:     params[:register_birth],
                      job:       params[:register_job]
                      )
    if user.save
      redirect_to: back
    else
      render :id => user.error.messages
  end

  #유저 전체의 정보 가져오는 메소드
  def get_list

  end

  #유저 한명의 정보 가져오는 메소드
  def get_user

  end

  def update

  end

  def destroy

  end

end
