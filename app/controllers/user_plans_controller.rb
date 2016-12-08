class UserPlansController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_user_plan, only: [:show, :update, :destroy]

  # GET /user_plans
  def index
    @user_plans = UserPlan.all

    render json: @user_plans
  end

  # GET /user_plans/1
  def show
    render json: @user_plan
  end

  # POST /user_plans
  def create
    @user_plan = UserPlan.new(user_plan_params)

    if @user_plan.save
      render json: @user_plan, status: :created, location: @user_plan
    else
      render json: @user_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_plans/1
  def update
    if @user_plan.update(user_plan_params)
      render json: @user_plan
    else
      render json: @user_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_plans/1
  def destroy
    @user_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_plan
      @user_plan = UserPlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_plan_params
      params.require(:user_plan).permit(:end_date, :name, :user_id)
    end
end
