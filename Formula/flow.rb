# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flow < Formula
  desc "Devops CLI to handle basic devops tasks"
  homepage "https://github.com/Edens-Angel/flow-cli"
  version "0.4"

  on_macos do
    on_intel do
      url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.4/flow-cli_0.4_darwin_amd64.tar.gz"
      sha256 "b027fe0bbca4486c582e6a4646887a6cd9fba693a8e6cd3fd406e7d37462fd57"

      def install
        bin.install "flow"
      end
    end
    on_arm do
      url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.4/flow-cli_0.4_darwin_arm64.tar.gz"
      sha256 "f660388eba57b75e694344f887278d7e56a920ebeb71035d0c832fe5591c2e54"

      def install
        bin.install "flow"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.4/flow-cli_0.4_linux_amd64.tar.gz"
        sha256 "eb51114638dcc0b2ecced0f5e25d88b87e574dddc866246820d0071fd0388d0b"

        def install
          bin.install "flow"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.4/flow-cli_0.4_linux_arm64.tar.gz"
        sha256 "2f152796cf3b2126302a51c615a4d3661f67f661ce089b40c0c9bb2fac0f1d6f"

        def install
          bin.install "flow"
        end
      end
    end
  end

  test do
    system "flow ip"
  end
end
