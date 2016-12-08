class UserDaysController < ApplicationController
  before_action :set_user_day, only: [:show, :update, :destroy]

  # GET /user_days
  def index
    @user_days = UserDay.all

    render json: @user_days
  end

  # GET /user_days/1
  def show
    render json: @user_day
  end

  # POST /user_days
  def create
    @user_day = UserDay.new(user_day_params)

    if @user_day.save
      render json: @user_day, status: :created, location: @user_day
    else
      render json: @user_day.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_days/1
  def update
    if @user_day.update(user_day_params)
      render json: @user_day
    else
      render json: @user_day.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_days/1
  def destroy
    @user_day.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_day
      @user_day = UserDay.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_day_params
      params.require(:user_day).permit(:position, :week, :completed, :user_plan_id, :exercise_id)
    end
end
