require 'test_helper'

class TurtlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turtle = turtles(:one)
  end

  test "should get index" do
    get turtles_url
    assert_response :success
  end

  test "should get new" do
    get new_turtle_url
    assert_response :success
  end

  test "should create turtle" do
    assert_difference('Turtle.count') do
      post turtles_url, params: { turtle: { description: @turtle.description, estimated_birthday: @turtle.estimated_birthday, module_installation_date: @turtle.module_installation_date, name: @turtle.name, sex: @turtle.sex, specie: @turtle.specie, user_id: @turtle.user_id } }
    end

    assert_redirected_to turtle_url(Turtle.last)
  end

  test "should show turtle" do
    get turtle_url(@turtle)
    assert_response :success
  end

  test "should get edit" do
    get edit_turtle_url(@turtle)
    assert_response :success
  end

  test "should update turtle" do
    patch turtle_url(@turtle), params: { turtle: { description: @turtle.description, estimated_birthday: @turtle.estimated_birthday, module_installation_date: @turtle.module_installation_date, name: @turtle.name, sex: @turtle.sex, specie: @turtle.specie, user_id: @turtle.user_id } }
    assert_redirected_to turtle_url(@turtle)
  end

  test "should destroy turtle" do
    assert_difference('Turtle.count', -1) do
      delete turtle_url(@turtle)
    end

    assert_redirected_to turtles_url
  end
end
