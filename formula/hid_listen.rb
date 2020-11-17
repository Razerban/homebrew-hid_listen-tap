class HidListen < Formula
  desc "PJRC hid_listen tool"
  homepage "https://github.com/razerbann/hid_listen"
  url "https://github.com/razerbann/hid_listen/archive/v1.0.2.tar.gz"
  sha256 "f4e60d0cee4e870f730f0f300442c7f68b767b1392bc5dc8b429eaa169b241f7"

  def install
    system "make"
    bin.install "./hid_listen"
  end

  test do
    assert_match "Waiting for device:", shell_output("${bin}/hid_listen")
  end
end
