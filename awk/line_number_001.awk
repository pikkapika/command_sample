BEGIN {
    RS = "\n";
    FS = " ";
    print "BEGIN";
}

{
    print NR ": " $0;
}

END {
    print "END";
}