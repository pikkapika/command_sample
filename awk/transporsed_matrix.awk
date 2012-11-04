BEGIN {
    RS = "\n";
    FS = " ";
    print "BEGIN";
}

{
    for (i = 1; i <= NF; i++) {
        val[i, NR] = $i;
    }
}

END {
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NR; j++) {
            printf("%s%s", val[i, j], OFS);
        }
        print "";
    }
    print "END";
}