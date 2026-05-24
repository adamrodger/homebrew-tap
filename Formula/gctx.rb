class Gctx < Formula
    version '0.8.0'
    desc "Manage Google Cloud Platform gcloud configurations easily and quickly"
    homepage "https://github.com/adamrodger/gcloud-ctx"

    MAC_X86_SHA   = 'a7df05e1cf75154cbb55c1a5ac702992b0642b1f95a7feaecd23bc823fe468a8'
    MAC_ARM_SHA   = 'e4ca53e6ae321ef145b332d666a663b3a2478ef2494a83e7abe0cd15c1ffde51'
    LINUX_X86_SHA = '037e41a946ffeb16ab4c4684790c5dc93f049a60f6b15e5da941666e7019d479'
    LINUX_ARM_SHA = '0c256f8435e235d9a5ff8e9eb828bfaf63c2db1190d7114912dc3bc65034a6a1'

    on_macos do
        on_intel do
            url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-apple-darwin.tar.gz"
            sha256 MAC_X86_SHA
        end
        on_arm do
            url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-aarch64-apple-darwin.tar.gz"
            sha256 MAC_ARM_SHA
        end
    end

    on_linux do
        on_intel do
            url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-x86_64-unknown-linux-musl.tar.gz"
            sha256 LINUX_X86_SHA
        end
        on_arm do
            url "https://github.com/adamrodger/gcloud-ctx/releases/download/v#{version}/gctx-aarch64-unknown-linux-musl.tar.gz"
            sha256 LINUX_ARM_SHA
        end
    end

    def install
        bin.install "gctx"
    end
end
