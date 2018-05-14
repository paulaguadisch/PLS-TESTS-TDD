require 'test_helper'

  class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: 'Johnny', last_name: 'Jumper', email: 'john@example.com', password: 'hdsdfweffseh')
  end

  test 'valid user' do
    assert @user.valid?
  end

  test 'invalid without first name' do
    @user.first_name = nil
    refute @user.valid?, 'saved user without a first name'
  end

  test 'invalid without last name' do
    @user.last_name = nil
    refute @user.valid?, 'saved user without a first name'
  end


  test 'invalid without email' do
    @user.email = nil
    refute @user.valid?, 'saved user without an email'
  end

    test 'invalid without password' do
    @user.password = nil
    refute @user.valid?, 'saved user without a password'
  end

    test 'invalid fist name with blanks' do
    @user.first_name = "       "
    refute @user.valid?, 'saved user with blanks as first name'
  end

   test 'email not available' do
    @user.email = User.exists?(:email => @user.email)
    refute @user.valid? 'saved user with an email that is already taken'
  end
end