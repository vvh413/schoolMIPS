

            .text

start:      move    $v0, $0         # v0 = 0
            addiu   $t0, $0, 2      # t0 = 2
            addiu   $t1, $0, 4      # t1 = 4

            lw      $v0, 0($v0)         
            sw      $t0, 0($t0)
            lw      $v0, 0($t0)         
            sw      $t1, 1($t1)
            lw      $v0, 1($t1)
