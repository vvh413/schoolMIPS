

            .text

start:      move    $t0, $0
            li      $t1, 1
            move    $v0, $t1
            # rdext   $t2                 # read external value to t2
            # 000000 00000 00000 01010 00000 111110
            # 0000503e
            addu    $0, $0, $0          # replace 00000021 in hex

fibonacci:  addu    $t0, $t0, $t1
            move    $v0, $t0
            addu    $t1, $t0, $t1
            move    $v0, $t1
            # wrext   $v0                 # write v0 to external out
            # 000000 00010 00000 00000 00000 111111
            # 0040003f
            addu    $0, $0, $0          # replace 00000021 in hex
            sltu    $t3, $v0, $t2       # t3 = (v0 < t2)
            bne     $t3, $0,  fibonacci # if (v0 < t2) goto fibonacci
