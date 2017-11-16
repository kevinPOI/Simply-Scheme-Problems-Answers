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

#|
14.1  
> (remove-once 'morning '(good morning good morning))
(GOOD GOOD MORNING)
(It's okay if your solution removes the other MORNING instead,
 as long as it removes only one of them.) |#
;keep patern
(define (remove-once wd sent)
  (if (equal? wd (first sent))
      (bf sent)
      (se (first sent)(remove-once wd (bf sent)))))
#|
14.2
 (up 'town)
(T TO TOW TOWN)|#
;accumulate
(define (up wd)
  (if (= (count wd) 0) '()
  (se (up (bl wd))wd)))
;14.3
(define (remove-once wd sent) 
 (cond ((empty? sent) sent) 
       ((equal? (first sent) wd) (bf sent)) 
       (else (se (first sent) (remove-once (bf sent))))))
;14.4



(define (odds-helper n sent)
  (cond ((empty? sent) sent)
        ((= (remainder n 2) 0) (odds-helper (+ n 1) (bf sent)))
        (else (se (first wd) (odds-helper (+ n 1) (bf sent))))))

(define (odds sent)
  (odds-helper 1 sent))
;14.5

(define (letter-count sent)
  (if (empty? sent)
    0
    (+ (count (first sent))
       (letter-count (bf sent)))))
;14.6


(define (member? wd sent)
  (cond ((empty? sent) #f)
        ((equal? wd (first sent)) #t)
        (else (member? wd (bf sent)))))
;14.7



(define (differences sent)
  (if (<= (count sent) 1)
    '()
    (let ((f (first sent))
          (s (bf sent)))
      (se (- (first s) f) (differences s)))))

#|14.9  Write a procedure called location that takes two arguments, a word and a sentence. It should return a
number indicating where in the sentence that word can be found. If the word isn't in the sentence, return #f.
If the word appears more than once, return the location of the first appearance. 

> (location 'me '(you never give me your money))
4|#
(define (location n wd sent)
  (if (empty? sent)
      #f
      (if (equal? wd (first sent))n
          (location ((+ n 1) wd (bf sent))))))
;14.10
(define (cad-helper n sent)
  (cond ((<= (count sent) 1) n)
        ((equal? (first sent) (first (bf sent)))
          (cad-helper (+ n 1) (bf sent)))
        (else
          (cad-helper n (bf sent)))))
(define (count-adjacent-duplicates sent)
  (cad-helper 0 sent))
;14.11

(define (remove-adjacent-duplicates sent)
  (if (<= (count sent) 1)
    sent
    (se
      (if (equal? (first sent) (first (bf sent)))
        '()
        (first sent))
      (remove-adjacent-duplicates (bf sent)))))
;14.15
(define (mergesort sent)
  (if (<= (count sent) 1)
      sent
      (merge (mergesort (one-half sent))
             (mergesort (other-half sent)))))

(define (merge left right)
  (cond ((empty? left)right)
        ((empty? right)left)
        ((before? (first left)(first right))
         (se (first left)(merge (bf left)right)))
        (else (se (first right)(merge left(bf right))))))
(define (one-half sent)
  (if (<= (count sent)1)
      sent
      (se(first sent)(one-half (bf(bl sent))))))
(define (other-half sent)
  (if (<= (count sent)1)
      '()
      (se (last (bf sent))(other-half (bf (bl sent))))))




   