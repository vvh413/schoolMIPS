.text
start:      
    addiu   $t2, $0, 15             # counter
    addiu   $t0, $0, 1              # t0 = A + 1 = i
    addiu   $s0, $0, 1              # s0 = 1 const
    for:
        lw      $t3, 0($t0)         # A[i]
        subu    $t1, $t0, $s0       # j = i - 1
        while:
            sltiu   $t5, $t1, 16    # (i < 16) = j >= 0
            beq     $t5, $0, break  # if (j < 0) break
            lw      $t4, 0($t1)     # A[j]
            sltu    $t5, $t4, $t3   # (t4 < t3) = (A[j] < A[i])
            bne     $t5, $0, break  # if (A[j] >= A[i]) break

            sw      $t4, 1($t1)     # A[j+1] = A[j]
            subu    $t1, $t1, $s0   # j-- 

            beq $0, $0, while       # while(1)
        break:

		sw 		$t3, 1($t1)			# A[j+1] = A[i]
        addiu   $t0, $t0, 1         # i++
        subu    $t2, $t2, $s0       # counter--
        sltu    $t6, $0, $t2        # (0 < t2) == (t2 > 0) == !(t2 <= 0)
        bne     $t6, $0, for        # if (t2 > 0) goto for

    addiu    $t0, $0, 0
    for2:
        lw      $v0, 0($t0)
        addiu   $t0, $t0, 1
        sltiu    $t1, $t0, 16
        bne     $t1, $0, for2

end: beq $0, $0, end
