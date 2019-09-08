mov var1 1
mov count 0
.loop:
mov var2 var1
mov temp var1
.outerloop:
.innerloop:
mul rgt1 var2 var2
mul rgt2 rgt1 var2
mul rgt3 temp temp
mul rgt4 rgt3 temp
mov rgt5 0
add rgt5 rgt2 rgt4
cmp rgt5 var1
beq .countIncrease
sub temp temp 1
cmp temp 0
bgt .innerloop
sub var2 var2 0
bgt .outerloop
cmp count 2
bgt .exit
add var1 var1 1
.countIncrease:
add count count 1
.exit:
Exit
mov count 0
