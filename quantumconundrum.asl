// Quantum Conundrum Autosplitter
// written by blairmadison11
// version 0.1
// load remover only

state("TryGame-Win32-Shipping", "1, 0, 8623, 0") {
	bool isLoading: 0xFD2110;
}

init {
	version = modules.First().FileVersionInfo.FileVersion;
	print(version);
}

exit { timer.IsGameTimePaused = true; }

isLoading { return current.isLoading; }
