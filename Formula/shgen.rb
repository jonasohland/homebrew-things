class Shgen < Formula
    desc "Parse ini file in CMake"
    url "https://github.com/jonasohland/shgen/tarball/0.0.3"
    sha256 "d944e089576528990d34f54c04fdda536263e2fbad5e2f732bca3ce1c33fde79"

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