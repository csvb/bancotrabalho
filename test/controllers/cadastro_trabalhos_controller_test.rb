require 'test_helper'

class CadastroTrabalhosControllerTest < ActionController::TestCase
  setup do
    @cadastro_trabalho = cadastro_trabalhos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cadastro_trabalhos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cadastro_trabalho" do
    assert_difference('CadastroTrabalho.count') do
      post :create, cadastro_trabalho: { arquivo: @cadastro_trabalho.arquivo, data: @cadastro_trabalho.data, nome: @cadastro_trabalho.nome, titulo: @cadastro_trabalho.titulo }
    end

    assert_redirected_to cadastro_trabalho_path(assigns(:cadastro_trabalho))
  end

  test "should show cadastro_trabalho" do
    get :show, id: @cadastro_trabalho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cadastro_trabalho
    assert_response :success
  end

  test "should update cadastro_trabalho" do
    patch :update, id: @cadastro_trabalho, cadastro_trabalho: { arquivo: @cadastro_trabalho.arquivo, data: @cadastro_trabalho.data, nome: @cadastro_trabalho.nome, titulo: @cadastro_trabalho.titulo }
    assert_redirected_to cadastro_trabalho_path(assigns(:cadastro_trabalho))
  end

  test "should destroy cadastro_trabalho" do
    assert_difference('CadastroTrabalho.count', -1) do
      delete :destroy, id: @cadastro_trabalho
    end

    assert_redirected_to cadastro_trabalhos_path
  end
end
