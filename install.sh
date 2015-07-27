#!/bin/bash

#Pfad zum Freetz-Ordner bitte anpassen!!
FREETZ=~/src/freetz-trunk
#workaround
cd ..
git clone --recursive https://github.com/vysheng/tg.git tg.HOST 
cd tg.HOST/ 
./configure && make && cd ..
cd tg
PATH="$FREETZ/toolchain/target/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games" CC="$FREETZ/toolchain/target/bin/mipsel-linux-uclibc-gcc" CFLAGS="-march=4kc -mtune=4kc -msoft-float -Os -pipe -Wa,--trap -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64" LDFLAGS="-L$FREETZ/toolchain/target/usr/lib/" PKG_CONFIG_PATH="$FREETZ/toolchain/target/bin/../lib/pkgconfig" PKG_CONFIG_LIBDIR="$FREETZ/toolchain/target/bin/../lib/pkgconfig" GLOBAL_LIBDIR=$FREETZ/toolchain/target/usr/lib  ./configure  ac_cv_func_malloc_0_nonnull=yes ac_cv_func_realloc_0_nonnull=yes   --target=mipsel-linux --host=mipsel-linux --build=x86_64-pc-linux-gnu --with-zlib=$FREETZ/toolchain/target/usr/ --disable-liblua --disable-python --disable-json && make ; cp ~/src/tg.HOST/bin/tl-parser bin/
make ; cp ~/src/tg.HOST/bin/generate bin/ && make
#aufräumen
mv bin/ files
cp tg-server.pub files/
cd files/
rm generate
rm tl-parser
sudo rm ~/src/tg.HOST
echo " Das Kompilimieren wurde erfolgreich abgeschlossen! Die benötigten Dateien findest du im files/ Ordner wo drin du dich gerade befindest. "


