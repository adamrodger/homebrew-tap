class Gctx < Formula
    version '0.8.0'
    desc "Manage Google Cloud Platform gcloud configurations easily and quickly"
    homepage "https://github.com/adamrodger/gcloud-ctx"

    if OS.mac?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-apple-darwin.tar.gz"
        sha256 "a7df05e1cf75154cbb55c1a5ac702992b0642b1f95a7feaecd23bc823fe468a8"
    elsif OS.linux?
        url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-unknown-linux-musl.tar.gz"
        sha256 "037e41a946ffeb16ab4c4684790c5dc93f049a60f6b15e5da941666e7019d479"
    end

    def install
        bin.install "gctx"
    end
end
