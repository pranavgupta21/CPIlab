cpu "8085.tbl"
hof "int8"

org 9000h

LHLD 9050h
XCHG	
LHLD 9052h
MVI C,00h
DAD D
JNC STORERESULT
INR C
STORERESULT: SHLD 9054h
MOV A,C
STA 9056h
RST 5