

.text
start:      
    move    $v0, $0         # sum
    addiu   $t0, $0, 7      # A = 2 % 14 + 5 = 7
    addiu   $t1, $0, 68     # B = (2 % 35 + 15)*4 = 17 * 4 = 68

    addiu   $t2, $0, 1      # 1
    or      $t0, $t0, $t2   # A = A | 1 (nearest odd number)

loop:
    addu    $v0, $v0, $t0   # sum
    addiu   $t0, $t0, 2     # step 2
    sltu    $t2, $t1, $t0   # (t1 < t0) == !(t0 <= t1)
    beq     $t2, $0, loop   # if (t0 <= t1) goto loop

end: beq $0, $0, end