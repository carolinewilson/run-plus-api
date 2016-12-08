require 'test_helper'

class UserPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_plan = user_plans(:one)
  end

  test "should get index" do
    get user_plans_url, as: :json
    assert_response :success
  end

  test "should create user_plan" do
    assert_difference('UserPlan.count') do
      post user_plans_url, params: { user_plan: { end_date: @user_plan.end_date, name: @user_plan.name } }, as: :json
    end

    assert_response 201
  end

  test "should show user_plan" do
    get user_plan_url(@user_plan), as: :json
    assert_response :success
  end

  test "should update user_plan" do
    patch user_plan_url(@user_plan), params: { user_plan: { end_date: @user_plan.end_date, name: @user_plan.name } }, as: :json
    assert_response 200
  end

  test "should destroy user_plan" do
    assert_difference('UserPlan.count', -1) do
      delete user_plan_url(@user_plan), as: :json
    end

    assert_response 204
  end
end
