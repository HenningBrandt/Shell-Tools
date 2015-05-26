cmd="ps axo pid,ppid,user,command"
if [ -z "$1" ]; then
	$cmd | grep -v "bin/psc" | grep -v "ps axo"
else
	$cmd | grep "$1" -i | grep -v "grep $1" | grep -v "bin/psc"
fi