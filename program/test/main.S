

            .text

start:      move    $v0, $0         # v0 = 0
            addiu   $t0, $0, 4      # t0 = 4

            sltiu   $v0, $t0, 5     # v0 = 4 < 5 = 1
            sltiu   $v0, $t0, 4     # v0 = 4 < 4 = 0
            sltiu   $v0, $t0, 3     # v0 = 4 < 3 = 0

            xori    $v0, $t0, 3     # v0 = 4 ^ 3 = 7
            xori    $v0, $t0, 5     # v0 = 4 ^ 5 = 1
            xori    $v0, $t0, 6     # v0 = 4 ^ 6 = 2

            xor     $v0, $t0, $v0   # v0 = 4 ^ 2 = 6
            xor     $v0, $t0, $t0   # v0 = 4 ^ 4 = 0
            addiu   $v0, $v0, 1     # v0 = 1
            xor     $v0, $t0, $v0   # v0 = 4 ^ 1 = 5
            xor     $v0, $t0, $v0   # v0 = 4 ^ 5 = 1

            sll     $v0, $t0, 1     # v0 = 4 << 1 = 8
            sll     $v0, $t0, 2     # v0 = 4 << 2 = 16
