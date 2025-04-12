include ../opts.mk

# dwm version
VERSION = 6.5

# Freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = $(X11INC)/freetype2

# This is needed for the swallow patch
XCBLIBS = -lX11-xcb -lxcb -lxcb-res

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} ${FREETYPELIBS} ${XCBLIBS} ${KVMLIB} -lXrender

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700L -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS} ${OPTS_CPPFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS   = ${INCS} ${CPPFLAGS} ${OPT_CFLAGS}
LDFLAGS  = ${LIBS} ${OPT_LDFLAGS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
