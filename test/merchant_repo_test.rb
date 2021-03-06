require 'simplecov'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_repo'


class MerchantRepositoryTest < Minitest::Test

  def test_it_exist
    merchant_repo = Merchant_Repo.new

    assert_instance_of Merchant_Repo, merchant_repo
  end

  def test_can_return_array_of_all_known_merchant_instances
    merchant_repo = Merchant_Repo.new

    assert_equal [], merchant_repo.all
  end

  def test_can_find_by_id
    merchant_repo = Merchant_Repo.new

    assert_nil merchant_repo.find_by_id("123")
    assert_instance_of Merchant, merchant_repo.find_by_id(12334105)
  end

  def test_it_can_find_by_name
    merchant_repo = Merchant_Repo.new

    assert_nil merchant_repo.find_by_name("Thisisafakenamenotinrepo")
    assert_instance_of Merchant, merchant_repo.find_by_name("CJsDecor")
  end

  def test_it_can_find_all_by_name
    skip
    merchant_repo = Merchant_Repo.new

    assert_equal [], merchant_repo.find_all_by_name("zzzz")
    assert_instance_of Merchant, merchant_repo.find_all_by_name("el")

  end

end
