class Getscript < Formula
  include Language::Python::Virtualenv

  desc "Fast, Unix-friendly CLI for fetching transcripts from YouTube and Apple Podcasts"
  homepage "https://github.com/outerbanks73/cli-tools"
  url "https://files.pythonhosted.org/packages/source/g/getscript/getscript-0.12.0.tar.gz"
  sha256 "6a69c7566bc00742c548e0d584c58399b8981214f9f10ba304f3a11ac34e9b37"
  license "MIT"

  depends_on "python@3.12"

  resource "youtube-transcript-api" do
    url "https://files.pythonhosted.org/packages/source/g/getscript/getscript-0.12.0.tar.gz"
    sha256 "6a69c7566bc00742c548e0d584c58399b8981214f9f10ba304f3a11ac34e9b37"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/g/getscript/getscript-0.12.0.tar.gz"
    sha256 "6a69c7566bc00742c548e0d584c58399b8981214f9f10ba304f3a11ac34e9b37"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/g/getscript/getscript-0.12.0.tar.gz"
    sha256 "6a69c7566bc00742c548e0d584c58399b8981214f9f10ba304f3a11ac34e9b37"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/g/getscript/getscript-0.12.0.tar.gz"
    sha256 "6a69c7566bc00742c548e0d584c58399b8981214f9f10ba304f3a11ac34e9b37"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/source/g/getscript/getscript-0.12.0.tar.gz"
    sha256 "6a69c7566bc00742c548e0d584c58399b8981214f9f10ba304f3a11ac34e9b37"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/g/getscript/getscript-0.12.0.tar.gz"
    sha256 "6a69c7566bc00742c548e0d584c58399b8981214f9f10ba304f3a11ac34e9b37"
  end

  def install
    virtualenv_install_with_resources

    man1.install "man/getscript.1"
  end

  test do
    assert_match "getscript", shell_output("#{bin}/getscript --help")
    assert_match version.to_s, shell_output("#{bin}/getscript --version")
  end
end
