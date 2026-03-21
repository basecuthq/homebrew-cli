# typed: false
# frozen_string_literal: true

# Basecut CLI - Database subsetting and sanitization for realistic dev environments.
# Install: brew install basecuthq/cli/basecut
# This file is automatically updated by the release workflow.

class Basecut < Formula
  desc "Database subsetting and sanitization for realistic dev environments"
  homepage "https://docs.basecut.dev"
  version "0.1.18"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-darwin-amd64"
      sha256 "55998f520be92358c8eb8c30507c0317d47a0f760c6290a5e30d5add7f49cf07"
    end
    on_arm do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-darwin-arm64"
      sha256 "2ef48190460106a8bebf4d45dcf96650a1d229f58f228f64afe52b201fcf9a92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-linux-amd64"
      sha256 "01b8b3b8c0b407444db2a87c6295daf8d4eef420582021742d1c7ae1ae382d95"
    end
    on_arm do
      url "https://github.com/basecuthq/cli/releases/download/v#{version}/basecut-#{version}-linux-arm64"
      sha256 "4e7ee1fd7c00f900cb66c9be82d6bd5ba4c497098a579cd05a2e7a44efaa8c42"
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
