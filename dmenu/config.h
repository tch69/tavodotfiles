/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 0;                      /* -b  option; if 0, dmenu appears at bottom     */
static const unsigned int alpha = 0xc8;     /* Amount of opacity. 0xff is opaque             */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const int user_bh = 18;               /* add an defined amount of pixels to the bar height */

static const char *fonts[] = {
	"monospace:style=Bold:size=9"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#aaaaaa", "#000000" },
	[SchemeSel] = { "#000000", "#999999" },
	[SchemeNormHighlight] = { "#e72a2a", "#000000" },
	[SchemeSelHighlight] = { "#000000", "#999999" },
	[SchemeOut] = { "#000000", "#999999" },
	[SchemeOutHighlight] = { "#000000", "#999999" },
};

static const unsigned int alphas[SchemeLast][2] = {
	[SchemeNorm] = { OPAQUE, alpha },
	[SchemeSel] = { OPAQUE, alpha },
	[SchemeOut] = { OPAQUE, alpha },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";
