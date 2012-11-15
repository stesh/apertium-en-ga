all:
	apertium-validate-dictionary apertium-en-ga.ga.dix
	lt-comp lr apertium-en-ga.ga.dix en-ga.ga.automorf.bin

	apertium-validate-dictionary apertium-en-ga.en.dix
	lt-comp lr apertium-en-ga.en.dix en-ga.en.automorf.bin

	apertium-validate-dictionary apertium-en-ga.en-ga.dix
	lt-comp rl apertium-en-ga.en-ga.dix en-ga.autobil.bin

clean:
	rm en-ga.ga.automorf.bin
	rm en-ga.en.automorf.bin
	rm en-ga.autobil.bin

