# typed: false
# frozen_string_literal: true

# Basecut CLI - Database subsetting and sanitization for realistic dev environments.
# Install: brew install basecuthq/cli/basecut
# This file is automatically updated by the release workflow.

class Basecut < Formula
  desc "Database subsetting and sanitization for realistic dev environments"
  homepage "https://docs.basecut.dev"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-darwin-amd64"
      sha256 "a2f09df9146ebdac0d7fa9f1473d678c9f0835155d520daac4fce17bc0c23890"
    end
    on_arm do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-darwin-arm64"
      sha256 "59401e1ce0fe8dc4bd5577d416a764c9a978a81d555a7caa40eb293be46e865c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-linux-amd64"
      sha256 "c625786ff260086e1b7bd7c1917ab0bb607d80fc4b472f0593febbcfcd211815"
    end
    on_arm do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-linux-arm64"
      sha256 "e11bed68271916fc3781ff63dcfb0f83590c1fd2e9d1acfa19b4aa3b63a1e23c"
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
