require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # setupメソッド内に書かれた処理は、各テストが走る直前に実行される
  def setup
    @user = User.new(name: "test-name", email: "test@email", password: "test-password")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "   "
    # assert_not は、true なら RED false なら GREEN
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "   "
    assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = "   "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "password should be too short" do
    @user.password = "aaaaa"
    assert_not @user.valid?
  end

  test "password should be too long" do
    @user.password = "a" * 21
    assert_not @user.valid?
  end
end
