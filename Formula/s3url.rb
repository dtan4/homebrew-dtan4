# This file was generated by GoReleaser. DO NOT EDIT.
class S3url < Formula
  desc "Generate S3 object pre-signed URL in one command"
  homepage "https://github.com/dtan4/s3url"
  version "1.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/dtan4/s3url/releases/download/v1.0.1/s3url_Darwin_x86_64.tar.gz"
    sha256 "c31f6748417d0c772ee0b2a9868da3bf160622a87e82465e5a1038701f3535ca"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dtan4/s3url/releases/download/v1.0.1/s3url_Linux_x86_64.tar.gz"
      sha256 "bd597777e58f62722fa372f803c9df5f34a347de35dcc0c39206e5bd39b94369"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dtan4/s3url/releases/download/v1.0.1/s3url_Linux_arm64.tar.gz"
        sha256 "d39f1142c2b9ce6e93ad7edc125eec3ed13924475de2666efdfa9b7eff93f7e2"
      else
        url "https://github.com/dtan4/s3url/releases/download/v1.0.1/s3url_Linux_armv6.tar.gz"
        sha256 "96a349b2f3c81ee9b6904aae468496fe4875a9b4f8c48c321040dcd2c1cf6317"
      end
    end
  end

  def install
    bin.install "s3url"
  end

  test do
    system "#{bin}/s3url", "-v"
  end
end
