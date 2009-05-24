require 'openssl'
require 'test/unit'
require File.join(File.dirname(__FILE__),'ext','bsdiff')

class TestPatch < Test::Unit::TestCase

  def setup
    File.unlink('b3') if File.exist?('b3')
    File.unlink('p0') if File.exist?('p0')
  end

  def teardown
    File.unlink('b3') if File.exist?('b3')
    File.unlink('p0') if File.exist?('p0')
  end

  def test_diff_and_patch

    #../bsdiff b0 b1 p0
    #../bspatch b0 b3 p0

    b0_chk = OpenSSL::Digest::MD5.hexdigest(File.read('ext/b0'))
    b1_chk = OpenSSL::Digest::MD5.hexdigest(File.read('ext/b1'))

    # create patch file from bspatch.o to bsdiff.o
    BSDiff.diff('ext/b0', 'ext/b1', 'p0')

    # apply patch to bspatch.o as bspatch2.o
    BSDiff.patch('ext/b0', 'b3', 'p0')

    b3_chk = OpenSSL::Digest::MD5.hexdigest(File.read('b3'))

    # bspatch2.o should equal bsdiff.o
    assert_equal(b1_chk,b3_chk)

  end

end
