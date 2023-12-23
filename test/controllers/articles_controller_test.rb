require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # GET /articles された場合、レスポンスとして HTTP ステータスコード200が返ってくる
  test "get /articles returns http status 200" do
    get articles_path
    assert_response :success
  end

  # POST /articles された場合、リダイレクトされる
  test "post /articles redirect" do
    post articles_url, params: { article: { title: "タイトル" } }
    assert_response :redirect
  end
end
