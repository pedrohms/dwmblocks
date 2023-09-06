//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/ /*Command*/	 	                            /*Update Interval*/	/*Update Signal*/
    {" 🐧 ", "$HOME/.local/bin/kernel",	 360,		          2},
	
	{" 💻 ", "$HOME/.local/bin/memory",	 6,		              1},

	{" 🔊 ", "$HOME/.local/bin/volume",     1,		              10},

	{" 🕑 ", "$HOME/.local/bin/clock",	     60,	              0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
