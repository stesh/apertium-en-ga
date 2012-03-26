all:
	apertium-validate-dictionary apertium-en-ga.ga.dix
	lt-comp lr apertium-en-ga.ga.dix ga-en.automorf.bin
	apertium-validate-dictionary apertium-en-ga.en-ga.dix
	lt-comp rl apertium-en-ga.en-ga.dix ga-en.autobil.bin
