class Cmakeinifileparser < Formula
    desc "Parse ini file in CMake"
    url "https://github.com/jonasohland/cmake-ini-file-parser/tarball/0.0.1"
    sha256 "977b2cdd7a18a90e65dbdf5c4023ad68d6768a958f2ee2c3403eb7906b387194"

    depends_on "cmake"

    def install
        system "cmake", ".", *std_cmake_args
        system "cmake", "--build", ".", "--target", "install"
    end
end