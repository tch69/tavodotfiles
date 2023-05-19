/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int gappx     = 12;        /* gaps between windows */
static const unsigned int snap      = 0;       /* snap pixel */
static const int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const int user_bh            = 10;        /* 2 is the default spacing around the bar's font */
static const char *fonts[]          = { "Roboto Mono:style=Medium:size=8.8" };
static const char dmenufont[]       = "Roboto Mono:style=Medium:size=8.8";
static const char col_gray1[]       = "#080808";
static const char col_gray2[]       = "#080808";
static const char col_gray3[]       = "#efefef";
static const char col_gray4[]       = "#efefef";
static const char col_cyan[]        = "#d92d2d";
static const unsigned int baralpha = 0xe6;
static const unsigned int borderalpha = OPAQUE;
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_gray3  },
};
static const unsigned int alphas[][3]      = {
	/*               fg      bg        border     */
	[SchemeNorm] = { OPAQUE, baralpha, borderalpha },
	[SchemeSel]  = { OPAQUE, baralpha, borderalpha },
};

static const char *const autostart[] = {
	"feh", "--bg-fill", "/home/tch/.local/share/backgrounds/7nqvy8ygnufa1.jpg", NULL,
	"xrdb", "/home/tch/.Xresources", NULL,
	"xcompmgr", NULL,
	"dwmblocks", NULL,
	NULL /* terminate */
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class     instance  title           tags mask  isfloating  isterminal  noswallow  monitor */
	{ "Gimp",    NULL,     NULL,           0,         1,          0,           0,        -1 },
	{ "Firefox", NULL,     NULL,           1 << 8,    0,          0,          -1,        -1 },
	{ "St",      NULL,     NULL,           0,         0,          1,           0,        -1 },
	{ NULL,      NULL,     "Event Tester", 0,         0,          0,           1,        -1 }, /* xev */
	{ "Fceux-gtk", NULL, NULL, 		0, 	1, 	0, 		-1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int attachbelow = 1;    /* 1 means attach after the currently active window */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *dmenucmd[] = { "dmenu_run", "-p", "Open: ", "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "st", NULL };

static const Key keys[] = {
	/* modifier                     key        	function        argument */
	{ MODKEY, 			XK_Return, 	spawn,          {.v = termcmd } },
	{ MODKEY|ShiftMask,             XK_Return, 	spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask, 		XK_Up, 		spawn, 		SHCMD("amixer set Master 1+") },
	{ MODKEY|ShiftMask, 		XK_Down, 	spawn, 		SHCMD("amixer set Master 1-") },
	{ MODKEY|ShiftMask, 		XK_s,	 	spawn, 		SHCMD("scrsh full") },
	{ MODKEY|ShiftMask, 		XK_d,	 	spawn, 		SHCMD("scrsh selected") },
	{ MODKEY|ShiftMask, 		XK_f,	 	spawn, 		SHCMD("scrsh window") },
	{ MODKEY, 			XK_z, 		spawn, 		SHCMD("ibus engine m17n:vi:telex") },
	{ MODKEY|ShiftMask, 		XK_z,	 	spawn, 		SHCMD("ibus engine xkb:us::eng") },
	{ MODKEY, 			XK_b, 		togglebar, 	{0} },
	{ MODKEY, 			XK_Tab, 	focusstack, 	{.i = +1 } },
	{ MODKEY|ShiftMask,		XK_Tab, 	focusstack, 	{.i = -1 } },
	{ MODKEY, 			XK_i, 		incnmaster,     {.i = +1 } },
	{ MODKEY, 			XK_d, 		incnmaster,     {.i = -1 } },
	{ MODKEY, 			XK_h, 		setmfact,       {.f = -0.05} },
	{ MODKEY, 			XK_l, 		setmfact,       {.f = +0.05} },
	{ MODKEY, 			XK_space, 	zoom,           {0} },
	{ MODKEY, 			XK_0, 		view, 		{0} },
	{ MODKEY, 			XK_x,      	killclient,     {0} },
	{ MODKEY|ShiftMask,		XK_x,      	spawn, 		SHCMD("xkill") },
	{ MODKEY, 			XK_t,	 	setlayout, 	{0} },
	{ MODKEY|ShiftMask, 		XK_t, 		togglefloating, {0} },
	{ MODKEY, 			XK_minus, 	setgaps, 	{.i = -1 } },
	{ MODKEY, 			XK_equal,	setgaps, 	{.i = +1 } },
	{ MODKEY|ShiftMask, 		XK_equal, 	setgaps, 	{.i = 0  } },
	TAGKEYS(                        XK_1, 				0)
	TAGKEYS(                        XK_2, 				1)
	TAGKEYS(                        XK_3, 				2)
	TAGKEYS(                        XK_4, 				3)
	TAGKEYS(                        XK_5, 				4)
	TAGKEYS(                        XK_6, 				5)
	TAGKEYS(                        XK_7, 				6)
	TAGKEYS(                        XK_8, 				7)
	TAGKEYS(                        XK_9, 				8)
	{ MODKEY|ShiftMask,             XK_q, 		quit, 		{0} },
	{ MODKEY|ShiftMask,		XK_r,      	spawn, 		SHCMD("pkill dwm") },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

