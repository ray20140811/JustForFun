# Python
## Function
### print()
   
   `# print(value, ..., sep='', end='\n', file=sys.stuout, flush=False)`
    `print(1, 2, 3)`
    `print(127, 0, 0, 1, sep=".")`
    `print(1, 2, 3, sep="|", end=' ') `
    `print(4, 5, 6, sep="~") `
   
   #+RESULTS:
   `1 2 3`
   `127.0.0.1`
   `1|2|3 4~5~6`
### format()
    
    `print("{} is a student.".format("Ray"))`
    `print("{0} is {1} years old.".format("Ray", 40))`
    `print("{name} is {age} years old.".format(name="Ray", age=40))`
    `print("{0:.2}".format(5.5625))`
    `print("{0:10} score:{1:_^10}".format("Jennifer", 95))`
    `print("{0:10} score:{1:>10}".format("Brian", 87))`
    `print("{0:10} score:{1:*<10}".format("Jolin", 100))`
   

   #+RESULTS:
   : Ray is a student.
   : Ray is 40 years old.
   : Ray is 40 years old.
   : 5.6
   : Jennifer   score:____95____
   : Brian      score:        87
   : Jolin      score:100*******

** input()
   #+begin_src python
     height = input("Please input your height: ")
     print(height)
     score = input("Please input math score: ")
     print("%s's math score: %5.2f" % ("Jenny", float(score)))
   #+end_src

   #+RESULTS:

   #+begin_src python 
   #+end_src

   #+RESULTS:
   : 3


* DataType Conversion
** int()
   #+begin_src python :results output
     x = "5"
     num = 5 + int(x)
     print(num)
   #+end_src

   #+RESULTS:
   : 10

** float()
   #+begin_src python :results output
     x = "5.3"
     num = 5 + float(x)
     print(num)
   #+end_src

   #+RESULTS:
   : 10.3

** str() 
   #+begin_src python :results output
     x = "5.3"
     num = 5 + float(x)
     print("output is " + str(num))
   #+end_src

   #+RESULTS:
   : output is 10.3


* Logical Operator
** and
   #+begin_src python :results output
     a = 10
     b = 20
     print(a < b and a != b)
   #+end_src

   #+RESULTS:
   : True

** or
   #+begin_src python :results output
     a = 10
     b = 20
     print(a < b or a == b)
   #+end_src

   #+RESULTS:
   : True


* Dictionary
** Create Dictionary  
   { key: value }
#+begin_src python :results output
person = {'name':'Ray', 'age': 40, 'job':'software engineer'}
print(person['name'])
print(person['age'])
print(person['job'])
#+end_src

#+RESULTS:
: Ray
: 40
: software engineer

** Using a dictionary
#+begin_src python :results output
person = {'name':'Ray', 'age': 40}
print(person)
person['job']='software engineer' # add key job:value software engineer
print(person['job'])
print(person)
#+end_src

#+RESULTS:
: {'name': 'Ray', 'age': 40}
: software engineer
: {'name': 'Ray', 'age': 40, 'job': 'software engineer'}

#+begin_src python :results output
  person = {'name':'Ray', 'age': 40}
  print(person)
  del person['age'] # delete key 'age'
  print(person)
#+end_src

#+RESULTS:
: {'name': 'Ray', 'age': 40}
: {'name': 'Ray'}

#+begin_src python :results output
  person = {'name':'Ray', 'age': 40}
  print(person)
  del person # delete dictionary person 
  print(person) # NameError: name 'person' is not defined
#+end_src

#+begin_src python :results output
  person = {'name':'Ray', 'age': 40}
  print(list(person))
#+end_src

#+RESULTS:
: ['name', 'age']

#+begin_src python :results output
  person = {'name':'Ray', 'age': 40}
  print(sorted(person))
#+end_src

#+RESULTS:
: ['age', 'name']

#+begin_src python :results output
  person = {'name':'Ray', 'age': 40}
  print('name' in person) # True
  print('age' not in person) # False
#+end_src

#+RESULTS:
: True
: False




* Operator
#+begin_src python :results output
a = 1
b = 2
c = 3

x = a + b * c
print("{}".format(x))

a += c #a=1+3=4
print("a={0}".format(a, b))

a -= b #a=4-2=2
print("a={0}".format(a, b))

a *= b #a=2*2=4
print("a={0}".format(a, b))

a **= b #a=4**2=4^2=4*4=16 
print("a={0}".format(a, b))

`# /與//都是除法運算子`
`# /會有浮點數`
`# //會將除法結果的小數部分去掉,只取整數`
a /= b #a=16/2=8
print("a={0}".format(a, b))

a //= b #a=8//2=4 
print("a={0}".format(a, b))

a %= c #a=4%3=1
print("a={0}".format(a, b))
#+end_src

#+RESULTS:
: 7
: a=4
: a=2
: a=4
: a=16
: a=8.0
: a=4.0
: a=1.0


* String
** compare
#+begin_src python :results output
print('快樂' > 'Happy')
print('Happy Birthday' < 'happy birthday')
print('abc' > 'ABC' > '123')
print('HAPPY' == 'happy')
#+end_src

#+RESULTS:
: True
: True
: True
: False

** in/not in
#+begin_src python :results output
str = 'happy'
print('y' in str)
print('0' in str)
print('0' not in str)
#+end_src

#+RESULTS:
: True
: False
: True

** len()
#+begin_src python :results output
str = 'The first wealth is health\u266C'
print("{} length is {}".format(str, len(str)))
#+end_src

#+RESULTS:
: The first wealth is health♬ length is 27

#+begin_src python :results output
str1 = 'Do one thing at a time!'
str2 = str1[13:]
str_w = len(str2)
print("取出字串=[{}],長度：{}".format(str2, str_w))
#+end_src

#+RESULTS:
: 取出字串=[at a time!],長度：10

## Tuple
    
    <pre>
        x = [1, 2, 3]
        x[2] = 4
    </pre>
    
    


## List
## Dictionary
