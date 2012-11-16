all:
	apertium-validate-dictionary apertium-en-ga.ga.dix
	lt-comp lr apertium-en-ga.ga.dix en-ga.automorf.bin

	apertium-validate-dictionary apertium-en-ga.en.dix
	lt-comp lr apertium-en-ga.en.dix en-ga.autogen.bin

	apertium-validate-dictionary apertium-en-ga.en-ga.dix
	lt-comp rl apertium-en-ga.en-ga.dix en-ga.autobil.bin

	apertium-validate-transfer apertium-en-ga.ga-en.t1x
	apertium-preprocess-transfer apertium-en-ga.ga-en.t1x ga-en.t1x.bin

clean:
	rm en-ga.automorf.bin
	rm en-ga.autogen.bin
	rm en-ga.autobil.bin
	rm ga-en.t1x.bin

