class Shgen < Formula
    desc "Parse ini file in CMake"
    url "https://github.com/jonasohland/shgen/tarball/0.0.6"
    sha256 "8a222aca97cecb82f3bc59db1e98526a3f20ac120cb1abb9dea5c26b3b4c55e4"

    depends_on "cmake"

    def install
        system "curl -L https://github.com/catchorg/Clara/tarball/v1.1.5 -o clara.tar"
        system "tar -xf clara.tar"
        system "rm -rf dep/Clara"
        system "mv catchorg-* dep/Clara"
        system "cmake", ".", *std_cmake_args, "-Dshgen_version=0.0.6"
        system "cmake", "--build", ".", "--target", "install"
    end
end
