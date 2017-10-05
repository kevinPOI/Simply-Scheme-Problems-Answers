;kevin
#|
5.1
(sentence 'I '(me mine)) ‘( I me mine )

(sentence '() '(is empty)) ’( is empty

(word '23 '45) ‘(2345)

(se '23 '45) ‘(23 45)

(bf 'a) “”

(bf '(aye)) “”

(count (first '(maggie mae))) 6

(se "" '() "" '())  ‘(“”)

(count (se "" '() "" '())) 2

|#
#|;> (f1 '(a b c) '(d e f))
(B C D E)|#
(define (f1 str1 str2)
  (se (butfirst str1) (butlast str2)))

#|> (f2 '(a b c) '(d e f))
(B C D E AF)|#
(define (f2 str1 str2)
  (se (butfirst str1) (butlast str2) (word(first str1)(last str2))))

#|> (f3 '(a b c) '(d e f))
(A B C A B C)|#
(define (f3 str1 str2)
  (se str1 str1))
#|> (f4 '(a b c) '(d e f))
BE|#
(define (f4 str1 str2)
  (word '(butfirst (butlast str1))))
#|
5.3  Explain the difference in meaning between (first 'mezzanine) and (first '(mezzanine)).
ANS: first 'mezzanine will print the first letter ( f), and first '(mezzanine) will print the whole word.
|#
#|
5.4  Explain the difference between the two expressions (first (square 7)) and (first '(square 7)).
(first (square 7)) will print 4 (first number of '49'), while (first '(square 7)) will treat them as a word, and print 'square'
|#
#|
5.5  Explain the difference between (word 'a 'b 'c) and (se 'a 'b 'c).
(word) function will print (abc), (se) will print (a b c)
|#
#|5.6  Explain the difference between (bf 'zabadak) and (butfirst 'zabadak).
No difference
|#
#|
5.7  Explain the difference between (bf 'x) and (butfirst '(x)).
no difference ( in terms of out put)
|#
#|
5.9  Figure out what values each of the following will return before you try them on the computer:
(se (word (bl (bl (first '(make a))))
          (bf (bf (last '(baseball mitt)))))
    (word (first 'with) (bl (bl (bl (bl 'rigidly))))
          (first 'held) (first (bf 'stitches))))
OUT: matt wright
(se (word (bl (bl 'bring)) 'a (last 'clean))
    (word (bl (last '(baseball hat))) (last 'for) (bl (bl 'very))
	  (last (first '(sunny days)))))
OUT: Brian havey
|#
;5.14
(define(third str1)
  (first (bf (bf str1))))
;5.15
(define(first_two str1)
  (word (first str1)(first (bf str1))))
;5.15b
(define (two_first str1 str2)
  (word (first str1) (first str2)))
(define (two_first_sent str1)
  (word (first (first str1))(first (last str1))))
;5.16
(define (knight str1)
  (se 'Sir str1))
#|
5.17  Try the following and explain the result: 

(define (ends word)
  (word (first word) (last word)))
(ends 'john)
wrong, since 'word' can't be a the name of a string, but if I change the name,
It will take the first letter 'j' and last letter 'n', return 'jn'
|#
;5.18
(define (ends wod)
  (word (first wod) (last wod)))
;5.19
(define (insert_and str1)
  (se (bl str1) 'and (last str1)))
;5.20
(define (middle_name str1)
  (se (bl (bf str1))))
;5.21
(define (query str1)
  (se (first (bf str1))(first str1)(bf (bf str1))'?))






