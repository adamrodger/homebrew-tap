class Gctx < Formula
    version '0.6.0'
    desc "Manage Google Cloud Platform gcloud configurations easily and quickly"
    homepage "https://github.com/adamrodger/gcloud-ctx"

    if OS.mac?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-apple-darwin.tar.gz"
        sha256 "725be47d002d3c71abe213091b42c4e78fec3bc65339fe00a2be1fc3af7cc3d5"
    elsif OS.linux?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-unknown-linux-musl.tar.gz"
        sha256 "a03e72e88e1d8522627657be8ba27d8792ae75cf67e89028da7d1f11b0974814"
    end

    def install
        bin.install "gctx"
    end
end
