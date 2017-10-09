;【9。1】
#|(lambda (x) (+ (* x 3) 4))
<procedure>
> ((lambda (x) (+ (* x 3) 4)) 10)
34
> (every (lambda (wd) (word (last wd) (bl wd)))
         '(any time at all))
'(yan etim ta lal)
> ((lambda (x) (+ x 3)) 10 15)
'error: expected 1 argument for x, given 2
【Scheme Basic Functions by Kevin&poi~】|#

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

;【9.4】
(define (who sent)
  (every (describe sent) '(pete roger john keith)))

(define (describe sent)
  (lambda (x) (se x sent)))

(define (who2 sent)
  (every (lambda (x)(se x sent))'(pete roger john keith)))
;【9.5】
(define (prepend-every add_in sent)
  (every (lambda (wd) (word add_in wd)) sent))

;【9.7】
(define (letterword char sent)
  (keep (lambda (wd)(member? char wd))sent))
;【9.9】
(define (common-words sent1 sent2)
  (keep (lambda (wd) (member? wd sent2))sent1))
;【9.12】
(define (first-last sent)
  (keep (lambda (wd)(equal? (last wd)(first wd)))sent))
;【9.14】
(define (sub wd1 wd2 sent)
  (every (lambda (wd) (if (equal? wd wd2) wd1 wd)) sent))
;【9.17】
(define (newkeep function x) 
  (let ((accum (if (sentence? x) se word)));see whether it is a sentence or word
    (accumulate accum 
                (every (lambda (wd) 
                         (if (function wd) wd '())) x))));satisfied predicate——> return, not satisfied——> return nothing
