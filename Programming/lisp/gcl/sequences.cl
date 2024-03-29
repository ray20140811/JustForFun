
; lists and vectors (and thus strings and bit-vectors) are subtypes of sequences
;
; the following functions available on all kinds of sequences
;  (length S) returns the length of sequence S
;  (elt S i) returns the i'th element of sequence S
;  (setf (elt S i) value) sets a new value for the i'th element of sequence S
;  (count e S) returns a count of how many times e appears in S
;  (remove e S) removes all instances of e from S
;  (position e S) returns the position of the first instance of e in S
;  (substitute eNew eOld S) replaces eOld with eNew throughout S
;  (copy-seq S) returns a new sequence that is a duplicate of S

; there are a host of other functions available to operate on an entire sequence:
;    concatenate, reverse, copy-seq, sort, stable-sort, remove-duplicates, merge
; note that these often expect extra arguments, e.g.
;    sort expects a suitable comparison operator:
;       (sort '(4 3 2 1 5 10) '<)  ; sorts using <, which of course expects numeric data
;    concatenate needs to know what kind of sequences it is concatenating:
;       (concatenate 'string str1 str2)


