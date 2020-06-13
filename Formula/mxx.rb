class Mxx < Formula
    desc "Parse ini file in CMake"
    url "https://github.com/jonasohland/mxx/tarball/967ae77df702724c04edb1f402fd6087d44cb5d4"
    sha256 "8eb227e2add409159431afe4384470d70996368cdeb496d574ed2836c8af154f"

    depends_on "cmake"
    depends_on "make"

    def install
        system "curl -L https://github.com/Cycling74/max-api/tarball/35aa120fb6345bba52995cbd19c766e23d3443f9 -o maxapi.tar"
        system "tar -xf maxapi.tar"
        system "rm -rf c74/max-api"
        system "mv Cycling74-* c74/max-api"
        system "cmake", ".", *std_cmake_args, "-G" "Unix Makefiles"
        system "cmake", "--build", ".", "--target", "install"
    end
end
