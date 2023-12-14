# frozen_string_literal: true

require 'test_helper'

class PasswordTest < ActiveSupport::TestCase
  test 'Should save password entry' do
    Password.new
    assert true
  end

  test 'show password' do
    user = User.create!(email: 'user@example.com', password: 'password123')
    password = Password.new(
      user:,
      website: 'Test.com',
      username: 'Tester',
      password: 'Pass'
    )

    assert password.save

    expected_password = Password.find(password.id)
    assert_equal(expected_password.website, password.website)
    assert_equal(expected_password.username, password.username)
    assert_equal(expected_password.password, password.password)
  end

  test 'should delete password entry' do
    user = User.create!(email: 'test@example.com', password: 'password123')
    password = user.passwords.create(
      website: 'Test.com',
      username: 'Tester',
      password: 'Pass'
    )
    assert_difference('Password.count', -1) do
      password.destroy
    end
  end

  test 'Should update password entry' do
    example_password = passwords(:example_password)
    example_password.update({
                              password: 'Updated Password'
                            })
    assert_equal('Updated Password', example_password.password)
  end
end
