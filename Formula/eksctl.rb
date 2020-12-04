# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.33.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/weaveworks/eksctl/releases/download/0.33.0/eksctl_Darwin_amd64.tar.gz"
    sha256 "61e5520e7c266740c66a75fbbb01c4080c1577aa2dd5016d9a2e545af8857b52"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/0.33.0/eksctl_Linux_amd64.tar.gz"
      sha256 "a278263b967fe4c197be6c743c6dfe3a87555c9ac941019681d3cf3baa0d254d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/weaveworks/eksctl/releases/download/0.33.0/eksctl_Linux_arm64.tar.gz"
        sha256 "ac7996faedf756188406f34c646023253d572f63a3fc5916557e2e8d0e4347b4"
      else
        url "https://github.com/weaveworks/eksctl/releases/download/0.33.0/eksctl_Linux_armv6.tar.gz"
        sha256 "af4bbfa0c1d1dfeae629d5ce19f5faea89aa983835b9c483efe6af7883ba85aa"
      end
    end
  end
  
  head "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Darwin_amd64.tar.gz"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
    
    # Install bash completion
    output = Utils.popen_read("#{bin}/eksctl completion bash")
    (bash_completion/"eksctl").write output
    
    # Install zsh completion
    output = Utils.popen_read("#{bin}/eksctl completion zsh")
    (zsh_completion/"_eksctl").write output
  end
end
