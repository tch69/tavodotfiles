include ../opts.mk

# dmenu version
VERSION = 5.3

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = $(X11INC)/freetype2

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC)
LIBS = -L$(X11LIB) -lX11 $(XINERAMALIBS) $(FREETYPELIBS) -lXrender

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\" $(XINERAMAFLAGS) $(OPTS_CPPFLAGS)
CFLAGS   = $(INCS) $(CPPFLAGS) $(OPT_CFLAGS)
LDFLAGS  = $(LIBS) $(OPT_LDFLAGS)

# compiler and linker
CC = cc
