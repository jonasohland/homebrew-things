class Mxx < Formula
    desc "Parse ini file in CMake"
    url "https://github.com/jonasohland/mxx/tarball/ca29f1e31643fd7dbd7d4102676d0b9738767943"
    sha256 "f61c7eda2129110547038ec3e182b8692912b3fec53a53329a0be07aacb28057"

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
