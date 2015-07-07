class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update]
  # before_action :set_userにlike_notesを追加してください
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show
    @notes = @user.notes
    # @titleを「投稿一覧」となるように定義してください

    
  end

  def edit
  end

  def update
    file = params[:user][:image]
    @user.set_image(file)

    if @user.update(user_params)
      redirect_to @user, notice: 'ユーザー情報が更新されました'
    else
      render :edit
    end
  end

  def like_notes
    # @userのゲッターを用いて、ユーザーのlike_notesを取得し、変数@notesに代入してください


    # @titleを定義してください


    # showアクションをrenderしてください

    
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email)
    end

    def correct_user
      user = User.find(params[:id])
      if !current_user?(user)
        redirect_to root_path, alert: '許可されていないページです'
      end
    end
end
