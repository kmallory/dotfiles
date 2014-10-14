    BEGIN {
	# We assume an awk implementation that is just plain dumb.
	# We will convert an character to its ASCII value with the
	# table ord[], and produce two-digit hexadecimal output
	# without the printf("%02X") feature.

	EOL = "%0A"		# "end of line" string (encoded)
	split ("1 2 3 4 5 6 7 8 9 A B C D E F", hextab, " ")
	hextab [0] = 0
	for ( i=1; i<=255; ++i ) ord [ sprintf ("%c", i) "" ] = i + 0
##	if ("'"$EncodeEOL"'" == "yes") EncodeEOL = 1; else EncodeEOL = 0	
	EncodeEOL = 0
    }
    {
	encoded = ""
	for ( i=1; i<=length ($0); ++i ) {
	    c = substr ($0, i, 1)
	    if ( c ~ /[a-zA-Z0-9.-]/ ) {
		encoded = encoded c		# safe character
	    } else if ( c == " " ) {
		encoded = encoded "+"	# special handling
	    } else {
		# unsafe character, encode it as a two-digit hex-number
		lo = ord [c] % 16
		hi = int (ord [c] / 16);
		encoded = encoded "%" hextab [hi] hextab [lo]
	    }
	}
	if ( EncodeEOL ) {
	    printf ("%s", encoded EOL)
	} else {
	    print encoded
	}
    }
    END {
    	#if ( EncodeEOL ) print ""
    }

