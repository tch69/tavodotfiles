#!/usr/local/bin/bash
## Quick script 
 engine=$(ibus engine)
 case $engine in
	 "Unikey")        echo "vi/Unikey"     ;;
	 "teni")          echo "vi/Teni"       ;;
	 "Bamboo")        echo "vi/Bamboo"     ;;
	 "m17n:vi:telex") echo "vi/m17n-telex" ;;
	 "xkb:us::eng")   echo "us/en-qwerty"  ;;
	 *)               echo "unknown"       ;;
 esac


