require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "status content cannot be empty" do
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty?
  end
  test "status content should not less than length of 2" do
  	status = Status.new(content:"H")
  	assert !status.save
  	assert !status.errors[:content].empty?
  end
  test "user_id cannot be empty" do
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end
end
