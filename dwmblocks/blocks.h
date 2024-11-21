//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{ "  ^c#eb4646^⛅ ", "bar_wttr", 10, 0 },
	{ " ^c#e86407^💿 ", "df -h | awk '/root/ { print $3\" \"$5\" \"$4 }'", 	1, 		0},
	{ " ^c#ff7616^ ", "free -h | awk 'NR==2 { print $3 }' | sed s/i//g",	1,		0},
	{ " ^c#ff8821^🌐 ", "nmcli -f IN-USE,SIGNAL dev wifi list | awk '/^\\*/ { print $2\"%\" }'",	1,		0},
	{ " ^c#00b35a^ ", "ibus engine", 1, 		0},
	{ " ^c#0e8e45^", "bar_vol", 1, 		0},

	{ " ^c#3479d0^🔋 ", "bar_bttr",					1,		0},
	{ " ^c#498bde^📅 ", "date '+%a %d.%m.%Y'",					1,		0},
	{ " ^c#c3c3c3^🕓 ", "date '+%r  '",					1,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 5;
