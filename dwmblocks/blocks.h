//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{ "  ⛅ ", "wttr", 10, 0 },
	{ "  ", "df -h | awk '/root/ { print $3\" \"$5}'", 	1, 		0},
	{ "  ", "free -h | awk '/^Mem/ { print $3 }' | sed s/i//g",	1,		0},
	{ " 🔊 ", "amixer get Master | awk '/Mono:/ {print $4}' | tr -d '[][]'", 1, 		0},
	{ " 📅 ", "date '+%d.%m.%Y'",					1,		0},
	{ " 🕓 ", "date '+%r  '",					1,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 5;
