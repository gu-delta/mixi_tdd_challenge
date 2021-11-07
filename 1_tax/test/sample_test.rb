require 'minitest/autorun'
require_relative '../lib/sample.rb'

class SampleTest < Minitest::Test
  # 各テスト開始時に一度呼ばれる
  def setup
    @tax = Tax.new
  end

  # test_から始まるメソッドがテスト時に呼ばれる
  def test_1
    # assertするメソッドはいくつかあるので
    # http://docs.seattlerb.org/minitest/Minitest/Assertions.html を参考に
    assert_equal 24, @tax.calc([10, 12])
  end

  def test_2
    assert_equal 62, @tax.calc([40, 16])
  end

  def test_3
    assert_equal 160, @tax.calc([100, 45])
  end

  def test_4
    assert_equal 171, @tax.calc([50, 50, 55])
  end

  def test_5
    assert_equal 0, @tax.calc([])
  end
end
