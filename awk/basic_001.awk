BEGIN {
    RS = "\n";
    FS = " ";
    print "BEGIN";
}

{
    print;
}

END {
    print "END";
}