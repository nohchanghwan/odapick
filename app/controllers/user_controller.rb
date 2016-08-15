class UserController < ApplicationController

  def join
    @users = User.new(email_id:  params[:sub_emailId],
                      password:  params[:sub_password],
                      name:      params[:sub_name],
                      gender:    params[:sub_gender],
                      birth:     params[:sub_birth],
                      job:       params[:sub_job]
                      )
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
