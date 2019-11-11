# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.9.0"

  if OS.mac?
    url "https://github.com/weaveworks/eksctl/releases/download/0.9.0/eksctl_Darwin_amd64.tar.gz"
    sha256 "70d45ab2196cdd89ce24c23621e053af0256a775ca8a8d96ae864f04dc31201c"
  elsif OS.linux?
    url "https://github.com/weaveworks/eksctl/releases/download/0.9.0/eksctl_Linux_amd64.tar.gz"
    sha256 "2c2f55a7df99b986d5431a287a3ba198efab71271e2b80989bfc5d926ce4ae17"
  end
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
