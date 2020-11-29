class HidListen < Formula
  desc "PJRC hid_listen tool"
  homepage "https://github.com/razerbann/hid_listen"
  url "https://github.com/razerbann/hid_listen/archive/v1.0.1.tar.gz"
  sha256 "9604969c67074f69ae488ccd17a5559abe8b5ff903133170cb2c7af7656d9c10"

  def install
    system "make"
    bin.install "./hid_listen"
  end

  test do
    assert_match "Waiting for device:", shell_output("${bin}/hid_listen")
  end
end
