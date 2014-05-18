export ROOT=/media/sda1/debian-mipsel-squeeze
export LD_LIBRARY_PATH=$ROOT/lib:$ROOT/lib/arm-linux-gnueabi:$ROOT/lib/arm-linux-gnueabihf:$ROOT/usr/lib:$ROOT/usr/lib/arm-linux-gnueabi:$ROOT/usr/lib/arm-linux-gnueabihf
$ROOT/lib/ld-*.so* $1 $2 $3 $4 $5 $6 $7 $8 $9
