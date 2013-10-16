require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { actual_budget: @project.actual_budget, description: @project.description, end_date: @project.end_date, extensions: @project.extensions, manager: @project.manager, name: @project.name, partner: @project.partner, planned_budget: @project.planned_budget, start_date: @project.start_date, theme: @project.theme }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { actual_budget: @project.actual_budget, description: @project.description, end_date: @project.end_date, extensions: @project.extensions, manager: @project.manager, name: @project.name, partner: @project.partner, planned_budget: @project.planned_budget, start_date: @project.start_date, theme: @project.theme }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
