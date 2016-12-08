require 'test_helper'

class UserDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_day = user_days(:one)
  end

  test "should get index" do
    get user_days_url, as: :json
    assert_response :success
  end

  test "should create user_day" do
    assert_difference('UserDay.count') do
      post user_days_url, params: { user_day: { completed: @user_day.completed, exercise_id: @user_day.exercise_id, position: @user_day.position, user_plan_id: @user_day.user_plan_id, week: @user_day.week } }, as: :json
    end

    assert_response 201
  end

  test "should show user_day" do
    get user_day_url(@user_day), as: :json
    assert_response :success
  end

  test "should update user_day" do
    patch user_day_url(@user_day), params: { user_day: { completed: @user_day.completed, exercise_id: @user_day.exercise_id, position: @user_day.position, user_plan_id: @user_day.user_plan_id, week: @user_day.week } }, as: :json
    assert_response 200
  end

  test "should destroy user_day" do
    assert_difference('UserDay.count', -1) do
      delete user_day_url(@user_day), as: :json
    end

    assert_response 204
  end
end
