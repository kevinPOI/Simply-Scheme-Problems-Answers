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
|#
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
(substitue