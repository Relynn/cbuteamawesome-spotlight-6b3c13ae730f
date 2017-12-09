require 'test_helper'

class PresentationBlocksControllerTest < ActionController::TestCase
  setup do
    @presentation_block = presentation_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presentation_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presentation_block" do
    assert_difference('PresentationBlock.count') do
      post :create, presentation_block: {  }
    end

    assert_redirected_to presentation_block_path(assigns(:presentation_block))
  end

  test "should show presentation_block" do
    get :show, id: @presentation_block
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presentation_block
    assert_response :success
  end

  test "should update presentation_block" do
    patch :update, id: @presentation_block, presentation_block: {  }
    assert_redirected_to presentation_block_path(assigns(:presentation_block))
  end

  test "should destroy presentation_block" do
    assert_difference('PresentationBlock.count', -1) do
      delete :destroy, id: @presentation_block
    end

    assert_redirected_to presentation_blocks_path
  end
end
