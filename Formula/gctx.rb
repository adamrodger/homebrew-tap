class Gctx < Formula
    version '0.4.0'
    desc "Manage Google Cloud Platform gcloud configurations easily and quickly"
    homepage "https://github.com/adamrodger/gcloud-ctx"

    if OS.mac?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-apple-darwin.tar.gz"
        sha256 "1688cb1e728c8aef5563ba911b8e6915f62155eb62ecc28142cc34da615d4324"
    elsif OS.linux?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-unknown-linux-musl.tar.gz"
        sha256 "301d502c59c6d6b35424f7f1edc81ee6c64c217ccfd6e31d0e3a8082ea59646f"
    end

    def install
        bin.install "gctx"
    end
end
