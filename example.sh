#!/bin/sh
echo "$@" | lt-proc en-ga.automorf.bin | ./fake_tagger | lt-proc -b en-ga.autobil.bin | apertium-transfer -b apertium-en-ga.ga-en.t1x ga-en.t1x.bin | lt-proc -g en-ga.autogen.bin | sed s/'#'//g
