#|【Scheme Basic Functions by Kevin&poi~】|#



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
;————————————————————————————————practice problems——————————————————————————————————
(define (reverse_order wd)

  (accumulate (lambda (x y)(word y x))wd))

(define (downup2 wd)
  (se  wd (word (first wd) (second wd))(first wd)))
(define (downup wd)
  (if (= (count wd) 1)
      (se wd)
      (se wd (downup (bl wd))wd)))
(define (explode wd)
  (if ( = (count wd) 0)
      ()
       (se (first wd)(explode (bf wd)))))
 (define (pairs wd)
   (if (<= (count wd) 1)
       ()
       (se (word(first wd)(second wd))(pairs (bf wd)))))
;——————————————————————————————————Problem Answers————————————————————————————————————
#|11.2  [8.12][4] When you teach a class, people will get distracted if you say "um" too many times.
 Write a count-ums that counts the number of times "um" appears in a sentence: 

> (count-ums
   '(today um we are going to um talk about the combining um method))
3
|#
(define (count-ums sent)
  (if (= (count sent) 0)
      0
       (if (equal? 'um (first sent))
           (+ 1 (count-ums (bf sent)))
           (+ 0 (count-ums (bf sent))))))
#|11.3  [8.13] Write a procedure phone-unspell that takes a spelled version of a phone number, such
 as POPCORN, and returns the real phone number. |#
(define (unspell-letter letter)
  (cond ((member? letter 'abc) 2)
	((member? letter 'def) 3)
	((member? letter 'ghi) 4)
	((member? letter 'jkl) 5)
	((member? letter 'mno) 6)
	((member? letter 'prs) 7)
	((member? letter 'tuv) 8)
	((member? letter 'wxy) 9)
	(else 0)))
(define (phone-unspell wd)
  (if (= (count wd) 1)
      (unspell-letter wd)
      (word (unspell-letter (first wd))(phone-unspell (bf wd)))))
  
      
 