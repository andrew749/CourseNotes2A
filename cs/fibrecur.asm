fib:
  sw $1,-4($30)
  sw $4,-8($30)
  sw $5,-12($30)
  sw $6,-16($30)

lis $4
.word 16
sub $30, $30, $4

lis $4
.word 1 ;$4 = fn+1
add $5, $4, $0
add $3, $0, $0 ;$3=fn

loop: beq $0, $1, end
  sub $1, $1, $5 ;n--
  add $6, $4, $3 ;$6 =  fn+s
  add $3, $4, $0 ;$3 = fn
  add $4, $6, $0 ;$4 = fn+1
  beq $0, $0, loop
end:
  lis $4
  .word 16
  add $30, $30, $4
  ;lw $1,-4($30)
  lw $4,-8($30)
  lw $5,-12($30)
  lw $6,-16($30)
  jr $31
