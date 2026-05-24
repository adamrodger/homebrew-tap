class Gctx < Formula
    version '0.8.1'
    desc "Manage Google Cloud Platform gcloud configurations easily and quickly"
    homepage "https://github.com/adamrodger/gcloud-ctx"

    MAC_X86_SHA   = '7ba598a2aa332aeccc22efb88f3fea29964457b3b6c6b4e9d849f11a6f0f0ae5'
    MAC_ARM_SHA   = 'd0f0617e1ac11840fe97dd00377c718b60eff1514bd264ba71147cc9d29def3d'
    LINUX_X86_SHA = 'f7ced60f208b8b496f02de19611f311987161f5eac1afa7ecd097528fc610f03'
    LINUX_ARM_SHA = '6dd1c08ca0b1cb7fb5cecc2cabf4a622bb569326878b055e8ff6640c12129837'

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
