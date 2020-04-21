# This file was generated by GoReleaser. DO NOT EDIT.
class EksctlPrivate < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.25.0"

  if OS.mac?
    url "https://github.com/weaveworks/eksctl-private/releases/download/0.13.0/eksctl_Darwin_amd64.tar.gz"
    sha256 "a94a0c78a939cd7c9b6a5e0b22d95799ca284bf7339ef11ce17be47ba6dd7a56"
  elsif OS.linux?
    url "https://github.com/weaveworks/eksctl-private/releases/download/0.13.0/eksctl_Linux_amd64.tar.gz"
    sha256 "edc1a143b44cb360af585da4e1c15e472ba9636a8166197ba40cf446d6dcb34f"
  end
  
  head "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Darwin_amd64.tar.gz"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
