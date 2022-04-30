require 'formula'

class OsxDict < Formula
  homepage 'https://github.com/leettran/osxdict#readme'
  head 'https://github.com/leettran/osxdict.git'
  url 'https://github.com/leettran/osxdict/archive/1.0.0.tar.gz'
  desc 'Command-line interface to Dictionary.app on OSX'

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    system "osxdict" 
  end

end
