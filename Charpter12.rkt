#|【Scheme Basic Functions by @Kevin&poi~ on github】|#



;function: ture if input is a vowel, false if not.

;argument: 1 character

(define (vowel? char)

  (member? char '(a e i o u)))

;square the number

;argument: 1 number

(define (square num)

  (* num num))

;cube the number

;argument: 1 number

(define (cube num)

  (* num num num))

;find the second word/character in a string/word

;argument: word/string

(define (second x)

  (first (bf x)))

;reverse the order of the word

;argument:word
;——————————————————————————————————————————practice problems————————————————————————————————————————————————————————————————
(define (factorial x)
   (if (<= x 1)
       1
       (* x(factorial (- x 1)))))
(define (fib x)
  (if (or (= x 1)(= x 2))
      1
      (+ (fib(- x 1)) (fib(- x 2)))))
;———————————————————————————————————————————exercise problems———————————————————————————————————————————————————————————————
#|12.1  Here is a definition of a procedure that returns the sum of the numbers in its argument sentence: 

(define (addup nums)
  (if (empty? (bf nums))
      (first nums)
      (+ (first nums) (addup (bf nums)))))
Although this works, it could be simplified by changing the base case. Do that.|#
  (define (addup nums)
    (if (empty? nums)
      0
      (+ (first nums) (addup (bf nums)))))
#|12.2  Fix the bug in the following definition: 

(define (acronym sent)                       ;; wrong
  (if (= (count sent) 1)
      (first sent)
      (word (first (first sent))
	    (acronym (bf sent)))))|#
(define (acronym sent)                       ;; wrong
  (if (= (count sent) 1)
      (first(first sent))
      (word (first (first sent))
	    (acronym (bf sent)))))
#|12.5  [8.8] Write an exaggerate procedure which exaggerates sentences: 

> (exaggerate '(i ate 3 potstickers))(
(I ATE 6 POTSTICKERS)

> (exaggerate '(the chow fun is good here))
(THE CHOW FUN IS GREAT HERE)
It should double all the numbers in the sentence, and it should replace "good" with "great,"
 "bad" with "terrible," and anything else you can think of. |#
(define (change_words wd)
  (cond ((number? wd)(* wd 2))
                        ((equal? wd 'good)'great)
                        ((equal? wd 'bad)'terrible)
                        (else wd)))
(define (exaggerate sent)
  (if (= (count sent) 0)
      '()
      (se (change_words (first sent))
          (exaggerate (bf sent)))))
(exaggerate '(3 good man bad))
#|12.7  Write a procedure spell-number that spells out the digits of a number: 

> (spell-number 1971)
(ONE NINE SEVEN ONE)
Use this helper procedure: |#

;【【study notes: since recursion functions evaluate from the base case, so the base case should be in the same format as the output】】
;【【eg：number -> 0, word -> \'' , sentence -> \'()】】


(define (spell-digit digit)
  (item (+ 1 digit)
	'(zero one two three four five six seven eight nine)))
(define(spell-number int)
  (if (= (count int) 0)
      '()
      (se (spell-digit (first int))(spell-number (bf int)))))
#|12.8  Write a procedure numbers that takes a sentence as its argument and returns another sentence containing only the numbers in the argument: 

> (numbers '(76 trombones and 110 cornets))
(76 110)|#
(define (numbers sent)
  (if (= (count sent) 0)
      '()
      (if (number? (first sent))
          (se (first sent)(numbers (bf sent)))
          (numbers(bf sent)))))
#|12.10  Write a procedure remove that takes a word and a sentence as arguments and returns the same sentence, but with all copies of the given word removed: 

> (remove 'the '(the song love of the loved by the beatles))
(SONG LOVE OF LOVED BY BEATLES)|#
(define (remove key sent)
  (if (= (count sent ) 0)
      '()
      (if (equal? (first sent) key)
          (remove key (bf sent))
          (se (first sent)(remove key (bf sent))))))
      
          