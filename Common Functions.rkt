#|【Scheme Common Functions by Kevin&poi~ on Github】|#

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
(define (reverse_order wd)
  (accumulate (lambda (x y)(word y x))wd))
