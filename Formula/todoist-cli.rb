class TodoistCli < Formula
  desc "Todoist CLI"
  homepage "https://github.com/nyactl/todoist-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/nyactl/todoist-cli/releases/download/v1.0.0/todoist-cli_1.0.0_darwin_amd64.tar.gz"
      sha256 "69e31ef5193b113a44cfd086b32ea963511f1793e7232fe9e49326272a0d61e5"
    end

    on_arm do
      url "https://github.com/nyactl/todoist-cli/releases/download/v1.0.0/todoist-cli_1.0.0_darwin_arm64.tar.gz"
      sha256 "3458d4e2f81cbcad74172900dc5e1e38a26afeb20e54778d1337152b96060f2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/nyactl/todoist-cli/releases/download/v1.0.0/todoist-cli_1.0.0_linux_amd64.tar.gz"
      sha256 "c241d0116e07ec7e71a4604aab8bacc812e8a48345a72a3e4464c9125befd881"
    end

    on_arm do
      url "https://github.com/nyactl/todoist-cli/releases/download/v1.0.0/todoist-cli_1.0.0_linux_arm64.tar.gz"
      sha256 "1b37dc5c4238cef012d0c47fd7cec0f8b1e84d8502840838ddebc5c1ce94b0a3"
    end
  end

  def install
    bin.install "todoist-cli"
  end

  test do
    system "#{bin}/todoist-cli", "--version"
  end
end
