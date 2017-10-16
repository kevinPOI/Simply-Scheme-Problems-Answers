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


(define (card-val card);assign points for each card
  (cond ((member? 'j card)1)
        ((member? 'q card)2)
        ((member? 'k card)3)
        ((member? 'a card)4)
        (else 0)))

(define (high-card-points sent);count total points of highcard in a string
  (accumulate + (every card-val sent)))

(define (count-suit suit sent);count howmany cards each suit have
  (count (keep (lambda (wd) (member? suit wd)) sent )))
(define (suits-count sent);take a hand and return a string of numbers of each kind of card
  (se (count-suit 's sent)(count-suit 'c sent)(count-suit 'h sent)(count-suit 'd sent)))
(define (suit-dist-points int);take number of suit and output the points
  (cond ((= int 0)3)
        ((= int 1)2)
        ((= int 2)1)
        (else 0)))
(define (hand-dist-points sent);take a string of cards and find the total distribution points
  (accumulate + (every suit-dist-points (suits-count sent))))
(define (bridge-val sent);combine highcard-points and distribution-points.
  (+ (hand-dist-points sent)(high-card-points sent)))
