class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[show edit update destroy]

  load_and_authorize_resource
  check_authorization

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show; end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  # POST /users
  def create
    @user = User.new(user_params)
    assign_user_role()

    if @user.save
      redirect_to users_url, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    @user.roles.destroy_all
    assign_user_role()

    if @user.update(user_params)
      redirect_to users_url, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    unless @user.has_role?(:administrator)
      @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.'
      return
    end

    redirect_to users_url, notice: 'Sorry, You are not allowed to delete administrator user.'
  end

  # GET /users/change_password
  def change_password
    @user = current_user
  end

  # PATCH /users/update_password
  def update_password
    @user = current_user

    if @user.update_with_password(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      redirect_to root_path, notice: 'Your password changed successfully.'
    else
      render :change_password
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

  # assign user role for create and update
  def assign_user_role
    role_id = params[:user][:roles].to_i

    unless role_id.zero?
      role = Role.find(role_id)
      @user.roles << role
    end
  end
end

