BEGIN {
    RS = "\n";
    FS = " ";
    print "BEGIN";
}

{
    if ($3 ~ /hi/) {
        print
    }
}

END {
    print "END";
}