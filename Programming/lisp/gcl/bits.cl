; there are a number of bitwise logic operators,
;    which assume a 2's complement form for their arguments:
; (lognot x)
; (logand x y) (lognand x y)
; (logior x y) (lognor x y) for inclusive-or
; (logxor x y) for exclusive-or

; there is also an arithmetic shift operation for 2's comp:
; (ash x 1)  shifts x left 1, effectively multiplying by 2
; (ash x -1) shifts x right 1, effectively doing integer division by 2
