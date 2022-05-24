
; math functions
; binary operators (+, -, /, *, min, max can take more than 2)
   + - / * mod log gcd lcm min max
   (expt x y) for x^y, (exp y) for e^y

; unary operators/functions
   + - tan sin cos sqrt incf decf (like ++ and --)
   truncate abs ceiling floor float truncate random

; equality comparisons
   = /= for comparing values
   eq for comparing both value and type
   equal for identity testing (are they the same item)

; relative value comparisons
   < <= > >=

; numeric types include:
;   fixnum - 64-bit integers (2's comp)
;   bignum - unlimited-length integers
;   rationals - ratios, e.g.  3/4
;   floats of various fixed sizes: short-float, single-float, double-float, long-float
;     (single-float being the default)
;   complex - e.g. #C(1 2) represents (1 + 2i)

; type checking functions include:
(numberp n)
(realp r)
(floatp f)
(integerp i)
(complexp c)
(rationalp r)

; limits (constants)
most-negative-short-float
most-negative-single-float
most-negative-long-float
most-negative-double-float
most-positive-short-float
most-positive-single-float
most-positive-long-float
most-positive-double-float
most-positive-fixnum
most-negative-fixnum
