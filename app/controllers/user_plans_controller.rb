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
    render json: @user_plan, include: ['user_days', 'user_days.exercise']
  end

  # POST /user_plans
  def create
    # Work out which plan to create (?? Why does 'user_plan_params[:length]' not work ??)
    length = params[:length]
    level = params[:level]

    #Create a new user plan
    @user_plan = UserPlan.new({
      user_id: current_user.id,
      name: "#{length} #{level}",
      end_date: params[:end_date]
    })

    if @user_plan.save
      # Upon successful saving of the plan, grab the corresponding plan and duplicate days
      # Find plan
      plan = Plan.where(level: level, length: length).first
      # Duplicate days
      plan.days.each do |day|
        UserDay.create!({ user_plan_id: @user_plan.id, exercise_id: day.exercise_id, position: day.position, week: day.week })
      end

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
      params.permit(:end_date, :length, :level)
    end
end
