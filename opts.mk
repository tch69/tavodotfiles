## opts.mk
# All suckless software in this directory used the same config.mk variables.
# Why don't we merge them all into a file? We won't have to change the same
# thing four times.

PREFIX = ~/.local
MANPREFIX = $(PREFIX)/share/man

# Xinerama lets you use multiple displays as one large one. Otherwise you don't
# need it.
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# If you're on Open/NetBSD: change X11DIR to /usr/X11R6 (or R7), and change
# MANPREFIX to $(PREFIX)/man. On FreeBSD: change X11DIR to /usr/local.
X11DIR = /usr
X11INC = $(X11DIR)/include
X11LIB = $(X11DIR)/lib
# Uncomment this on OpenBSD
#KVMLIB = -lkvm
# Uncomment this on NetBSD, programs won't start without it. Give build errors
# on certain GCC builds on Linux. Otherwise, you can experiment with it.
#OPT_LIBS = -R$(X11LIB)

OPT_CFLAGS = -pedantic -Wall -march=native -flto -O3
OPT_LDFLAGS = -flto -O3 -s
