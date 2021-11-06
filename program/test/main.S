

            .text

start:      move    $v0, $0         # v0 = 0
            addiu   $t0, $0, 2      # t0 = 0
            addiu   $t1, $0, 4      # t0 = 4

            sw      $t0, 0($t0)
            lw      $v0, 0($t0)         
            sw      $t1, 1($t1)
            lw      $v0, 1($t1)
