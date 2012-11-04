BEGIN {
    RS = "\n";
    FS = " ";
    print "BEGIN";
}

{
    for (i=1; i<=NF; i++) {
        print $i;
    }
}

END {
    print "END";
}