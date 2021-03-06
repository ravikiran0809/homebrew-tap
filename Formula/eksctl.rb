# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.34.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/weaveworks/eksctl/releases/download/0.34.0/eksctl_Darwin_amd64.tar.gz"
    sha256 "2bf02d5677656e60bc1f25abdf3dc15b6bf75ed9f8b93bea5788797d449c2816"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/weaveworks/eksctl/releases/download/0.34.0/eksctl_Linux_amd64.tar.gz"
    sha256 "b36f5e860a7082d2391ddc4ab436875e34a37f0649fd0e11cb6556f39d0c2ae2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/weaveworks/eksctl/releases/download/0.34.0/eksctl_Linux_armv6.tar.gz"
    sha256 "9498b17c04c3ff5a6d4105480c2936e50d04a3c17dfa303a2a62ba66a1268542"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/weaveworks/eksctl/releases/download/0.34.0/eksctl_Linux_arm64.tar.gz"
    sha256 "449326370482427e8252c5813c3f95a504fdedea92d064307ed69addca765566"
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
