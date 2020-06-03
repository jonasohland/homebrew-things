class Shgen < Formula
    desc "Parse ini file in CMake"
    url "https://github.com/jonasohland/shgen/tarball/0.0.1"
    sha256 "bff600ca67aa345305bccb7b2c3a56db91d8f3c1b98fe2a1511765ec2250ceb8"

    depends_on "cmake"

    def install
        system "curl -L https://github.com/catchorg/Clara/tarball/v1.1.5 -o clara.tar"
        system "tar -xf clara.tar"
        system "rm -rf dep/Clara" 
        system "mv catchorg-* dep/Clara"
        system "cmake", ".", *std_cmake_args
        system "cmake", "--build", ".", "--target", "install"
    end
end