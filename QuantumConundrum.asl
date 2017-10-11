// Quantum Conundrum Autosplitter
// Written by blairmadison11
// Version 0.7 (10/11/2017)
// Supports: Start, Split, Reset, Load Removal
// Known issues:
//   no split on "intro" segment
//   start will trigger after manual resets during game

state("TryGame-Win32-Shipping", "1, 0, 8623, 0") {
	bool isLoading: 0xFD2110;
	bool isInMenu: 0x1000DCC;
	bool isPlaying: 0xFE3401;
	byte gameState: 0x1017404;
}

init {
	version = modules.First().FileVersionInfo.FileVersion;
	print(version);
}

start {
	return current.isPlaying && !current.isLoading && !current.isInMenu;
}

split {
	return old.gameState == 8 && (current.gameState == 4 || current.gameState == 5 || current.gameState == 9);
}

isLoading {
	return current.isLoading;
}

reset {
	return old.gameState == 7 && current.gameState == 5;
}

exit {
	timer.IsGameTimePaused = true;
}
