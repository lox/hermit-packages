description = "stripe is a command line tool for interactive with Stripe APIs"
binaries = ["stripe"]
test = "stripe --version"

platform "darwin" "arm64" {
  source = "https://github.com/stripe/stripe-cli/releases/download/v${version}/stripe_${version}_mac-os_arm64.tar.gz"
}

platform "linux" "arm64" {
  source = "https://github.com/stripe/stripe-cli/releases/download/v${version}/stripe_${version}_linux_arm64.tar.gz"
}

platform "linux" "amd64" {
  source = "https://github.com/stripe/stripe-cli/releases/download/v${version}/stripe_${version}_linux_x86_64.tar.gz"
}

version "1.19.4" "1.19.5" {
  auto-version {
    github-release = "stripe/stripe-cli"
  }
}

sha256sums = {
  "https://github.com/stripe/stripe-cli/releases/download/v1.19.4/stripe_1.19.4_linux_arm64.tar.gz": "51d54daa51036e51862578e2462431363c23b19d87257688e4d88401bae3c923",
  "https://github.com/stripe/stripe-cli/releases/download/v1.19.4/stripe_1.19.4_linux_x86_64.tar.gz": "0380f24515030eca0b99192d5d4c206625718b8c13e666eeab8f13ea4df2df22",
  "https://github.com/stripe/stripe-cli/releases/download/v1.19.4/stripe_1.19.4_mac-os_arm64.tar.gz": "e014bd637ec9bf2ad268cb61cb05c37075aad5e8e37c59e553db54d96284decd",
  "https://github.com/stripe/stripe-cli/releases/download/v1.19.5/stripe_1.19.5_linux_x86_64.tar.gz": "8840e3705d2bab93df53903311c8fc25fff11fbb93e85035a6d0e4930b8a30a5",
  "https://github.com/stripe/stripe-cli/releases/download/v1.19.5/stripe_1.19.5_mac-os_arm64.tar.gz": "1547fc6981bc0c0028ad49ef61433f5c7ff91a91bddc3ad59a6169ad03791e11",
}
