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
jr $31
