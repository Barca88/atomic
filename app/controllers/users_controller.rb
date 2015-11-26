class UsersController < Clearance::UsersController
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:account_number,
      :student_id, :name, :city, :phone_number,
      :birthdate, :email, :password)
  end
end
