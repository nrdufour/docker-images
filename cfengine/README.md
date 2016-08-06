# nrdufour/cfengine

Simple cfengine docker image to quickly test promises.

I reused the script `start.sh` from <https://github.com/lukaf/dockers> and rearranged it so that an interactive mode is possible.

Parameters:

+ hub: launch a cfengine policy server
+ hubi: the same but with a bash to interract with it
+ client "host": launch a cfengine client connected to the given policy server "host"
