class Gctx < Formula
    version '0.7.0'
    desc "Manage Google Cloud Platform gcloud configurations easily and quickly"
    homepage "https://github.com/adamrodger/gcloud-ctx"

    if OS.mac?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-apple-darwin.tar.gz"
        sha256 "c640a7bc9f98972a9cbe410a3e8b5aac7c45fc64c2a01e65b473bab9cc089dd5"
    elsif OS.linux?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-unknown-linux-musl.tar.gz"
        sha256 "885c7318a9cde3a906ba56704bda5638fe8e8f72549573cd7618b13e0e689ffa"
    end

    def install
        bin.install "gctx"
    end
end
