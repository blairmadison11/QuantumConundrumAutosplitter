<h1>Quantum Conundrum Autosplitter</h1>

<p>Quantum Conundrum Autosplitter is an add-on script for <a href="http://livesplit.github.io/">LiveSplit</a> that allows the timer to be automatically controlled while playing <a href="http://store.steampowered.com/app/200010/Quantum_Conundrum/">Quantum Conundrum</a>. It is built into LiveSplit and can be enabled simply by selecting Quantum Conundrum in the Splits Editor.</p>

<p>Quantum Conundrum Autosplitter currently supports the following features:</p>

<h3>Start</h3>
The script will automatically start the timer (if it is stopped) whenever the player has control of the character in the game.

<h3>Split</h3>
The script will automatically split whenever the player completes a stage within the game.

<h3>Reset</h3>
The script will automatically reset the timer whenever the player starts a new game from the main menu.

<h3>Load Removal</h3>
The script will automatically pause the timer (when comparing against Game Time) during load screens.

<h2>Known Issues</h2>
<ul>
<li>The script does not split on non-level segments such as the commonly used "intro" segment.</li>
<li>The script does not split when the player loses control on the very last level (Uber IDS: Only A Minor Setback Pt.II).</li>
<li>The script will start the timer <i>whenever the player has control of the character</i> in the game, not just at the beginning. This means the timer will start again if the user manually resets while in the game.</li>
</ul>

If anyone would like to fix these issues, please feel free to fork this repository and send a pull request.
