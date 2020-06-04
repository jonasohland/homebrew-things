class Shgen < Formula
    desc "Parse ini file in CMake"
    url "https://github.com/jonasohland/shgen/tarball/0.0.4"
    sha256 "349c9c2dec2f81133f59193e12d0740bd9009f626d854bb5268abe15c301c713"

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