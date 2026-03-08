# typed: false
# frozen_string_literal: true

# Basecut CLI - Database subsetting and sanitization for realistic dev environments.
# Install: brew install basecuthq/cli/basecut
# This file is automatically updated by the release workflow.

class Basecut < Formula
  desc "Database subsetting and sanitization for realistic dev environments"
  homepage "https://docs.basecut.dev"
  version "0.1.9"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-darwin-amd64"
      sha256 "786f1248985355b75a47cea92ef51657fe0063020737b4f6232ca60d2f5a6763"
    end
    on_arm do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-darwin-arm64"
      sha256 "5d4d6d20b4736e46210298bb1d23ca09d2f6e3b0e65bb38ccc521d086c438822"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-linux-amd64"
      sha256 "79eaf27fc2a33ff88459ffaf4df4b71a39e716057865a6c53eb69759fffc0b36"
    end
    on_arm do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-linux-arm64"
      sha256 "629a7c41fdebe4855acc954678f9e051e86efef7d0c9d073913dc82f30ac8519"
    end
  end

  def install
    binary = Dir["basecut-*"].first
    bin.install binary => "basecut"
  end

  test do
    assert_match "Database subsetting", shell_output("#{bin}/basecut --help", 0)
  end
end
