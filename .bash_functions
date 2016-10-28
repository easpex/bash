#Bash functions; source by bashrc from /etc
###########################################

#search for something in youtube from safari

function utb() { open -a safari https://www.youtube.com/results?search_query="$*"; }

#search for something in google from safari

function ggl() { open -a safari https://www.google.com/search?q="$*"; }

#open a file with TextEdit

function e() {
	if [ -z "$*" ]
then
	open -a TextEdit
else
	open -e "$*"
fi
}

#open a file with an application

function o() 
{ 
if [ -z "$2" ] #if the second arg is missing.
	then
	open -a "$1"  #just open an app
elif [ "$1" = "safari" ]
	then
	args="$1 http://$2"
	open -a $args		
else
	args="$1 $2"  #open something with the app
	open -a $args
fi
}
