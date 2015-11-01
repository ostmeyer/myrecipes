require 'test_helper'
require "minitest/rg"

class ChefTest < ActiveSupport::TestCase

  def setup
    @chef = Chef.new(chefname: "john", email: "john@example.com")
  end

  test "chef should be valid" do
    assert @chef.valid?
  end

  test "chefname should be present" do
    @chef.chefname = nil
    assert_not @chef.valid?
  end

  test "chefname should not be too long" do
    @chef.chefname = 'a' * 41
    assert_not @chef.valid?
  end

  test "chefname should not be too short" do
    @chef.chefname = 'aa'
    assert_not @chef.valid?
  end

  test "chef email should be present" do
    @chef.email = nil
    assert_not @chef.valid?
  end

  test "chef email length should be within bounds" do
    @chef.email = "a" * 101 + "@example.com"
    assert_not @chef.valid?
  end

  test "chef email address should be unique" do
    chef2 = @chef.dup
    chef2.email = @chef.email.upcase
    @chef.save
    assert_not chef2.valid?
  end

  test "chef email validation should accept valid addresses" do
    valid_addresses = %w[user@eee.com R_TDD-DS@eee.hello.org user@example.com first.last@eee.au laura+joe@monk.cm]
    valid_addresses.each do |email|
      @chef.email = email
      assert @chef.valid?, "#{email.inspect} should be valid"
    end
  end

  test "chef email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_eee.org user.name@example. eee@i_am_.com foo@ee+aar.com]
    invalid_addresses.each do |email|
      @chef.email = email
      assert_not @chef.valid?, "#{email.inspect} should be invalid"
    end
  end


end
