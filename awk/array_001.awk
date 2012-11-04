BEGIN {
    RS = "\n";
    FS = " ";
    print "BEGIN";
    f1 = 0;
    f2 = 0;
    f3 = 0;
}

{
    data[1]+=$1;
    data[2]+=$2;
    data[3]+=$3;
}

END {
    for (i=1; i<=3; i++) {
        print data[i];
    }
    print "END";
}