* Q: [What's difference between defvar, defparameter, setf and setq](https://stackoverflow.com/questions/8927741/whats-difference-between-defvar-defparameter-setf-and-setq)

  ```
  [1]> (defvar a 5)
  A
  [2]> (+ a 1)
  6
  [3]> (defparameter b 5)
  B
  [4]> (+ b 1)
  6
  [5]> (setf c 5)
  5
  [6]> (+ c 1)
  6
  [7]> (setq d 5)
  5
  [8]> (+ d 1)
  6
  [9]> (let ((a 500)) (+ a 1))
  501
  [10]> (let ((b 500)) (+ b 1))
  501
  [11]> (let ((c 500)) (+ c 1))
  501
  [12]> (let ((d 500)) (+ d 1))
  501
  ``` 
  
* A: DEFPARAMETER always assigns a value. So:
  
  ```

  [1]> (defparameter a 1)
  A
  [2]> (defparameter a 2)
  A
  [3]> a
  2
 
  ```
  
  while DEFVAR does it only once, so:

  ```
  [4]> (defvar b 1)
  B
  [5]> (defvar b 2)
  B
  [6]> b
  1
  ```

  SETF is a macro which uses SETQ internally, but has more possibilities. In a way it's a more general assignment operator. E.g. with SETF you can do:

  ```
  [19]> (defparameter c (list 1 2 3))
  [21]> (setf (car c) 42)                                              
  42
  [22]> c
  (42 2 3)
  ```

  but you can't do that with SETQ:

  ```
  [23]> (setq (car c) 42)                                              
  *** - SETQ: (CAR C) is not a symbol
  The following restarts are available:
  USE-VALUE      :R1      Input a value to be used instead.
  ABORT          :R2      Abort main loop
  Break 1 [24]> abort
  ```
