# uniqのコマンドリファレンス

* sample_s_001.txt && sample_s_002.txt
    cat sample_s_001.txt | sort > sample_s_001_sort.txt
    cat sample_s_002.txt | sort > sample_s_002_sort.txt
    cat sample_s_001_sort.txt sample_s_002_sort.txt | sort | uniq -d

* sample_s_001.txt のみにあって sample_s_002.txt には無いもの
    cat sample_s_001.txt | sort > sample_s_001_sort.txt
    cat sample_s_002.txt | sort > sample_s_002_sort.txt
    cat sample_s_001_sort.txt sample_s_002_sort.txt | sort | uniq -d > dup.txt
    cat sample_s_001_sort.txt dup.txt | sort | uniq -c | awk '{if ($1 == 1) print $2;}'
