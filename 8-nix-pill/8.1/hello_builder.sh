export PATH="$gnutar/bin:$gcc/bin:$gnumake/bin:$coreutils/bin:$gawk/bin:$gzip/bin:$gnugrep/bin:$gnused/bin:$builtins/bin:$bintools/bin"
echo "PATH=$PATH"
echo "binutils=$binutils"
echo "bintools=$bintools"
echo "binutils_unwrapped=$binutils_unwrapped"
tar -xzf $src
cd hello-2.10
./configure --prefix=$out
make
make install
