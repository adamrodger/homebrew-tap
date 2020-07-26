class Gctx < Formula
    version '0.5.0'
    desc "Manage Google Cloud Platform gcloud configurations easily and quickly"
    homepage "https://github.com/adamrodger/gcloud-ctx"

    if OS.mac?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-apple-darwin.tar.gz"
        sha256 "129e3e9a88d95eb3eede86f7254178974abfadec44da341596eedd848c7baef0"
    elsif OS.linux?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-unknown-linux-musl.tar.gz"
        sha256 "6e999e780c87dc02ef4aac80192881b544789b28343377b9ec63dbeab4b05823"
    end

    def install
        bin.install "gctx"
    end
end
