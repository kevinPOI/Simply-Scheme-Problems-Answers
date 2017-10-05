;Kevin Tang
;6.1
#|(cond ((= 3 4) '(this boy))
      ((< 2 5) '(nowhere man))
      (else '(two of us)))
OUT: nowhere man
(cond (empty? 3)
      (square 7)
      (else 9))
OUT: 3

(define (third-person-singular verb)
  (cond ((equal? verb 'be) 'is)
        ((equal? (last verb) 'o) (word verb 'es))
        (else (word verb 's))))
(third-person-singular 'go)
OUT: goes
|#
#|
(or #f #f #f #t)
#t
(and #f #f #f #t)
#f
(or (= 2 3) (= 4 3))
#f
(not #f)
#t
(or (not (= 2 3)) (= 4 3))
#t
(or (and (= 2 3) (= 3 3)) (and (< 2 3) (< 3 4)))
#f
|#
;6.3
(define (sign number)
  (cond ((< number 0)'negative)
        ((= number 0)'zero)
        (else 'positive)))
;6.4
(define (utensil meal)
 (if (equal? meal 'chinese)'chopsticks 'fork))
;6.7
(define (type-of input)
  (cond ((number? input)'number)
        ((sentence? input)'sentence)
        ((word? input) 'word)
        ((boolean? input) 'boolean)
        (else 'WTF is it)))
;6.8
(define (indef-article char)-
  (cond ((member? (first char) '(a e i o u)) (se 'an char))
        (else (se 'a char))))
;6.11
(define (valid-date? month day year)
  (if (not (<= month 12))
      '#F
      (cond ((member? month '(1 3 5 7 8 10 12))(if (<= day 31)'#T '#F));31days month
            ((member? month '(4 6 9 11))(if (<= day 30)'#T '#F));30 days month
            ((= month 2)(if (<= day 28)'#T;month 2 if day <= 28
                            (cond ((= 0 (remainder year 4)); if divisible by 4 > if so, if divisible by 400.
                                   (if (= 0 (remainder year 400))'#F
                                       (if (= 29 day)'#T)))
                                  (else '#F)))))))
;6.14
(define (describe-time second)
  (cond ((< second 60)(se second 'seconds))
        ((< second 3600)(se (*(/ second 60)1.0)'minutes))
        ((< second 86400)(se (*(/ second 3600)1.0) 'hours))
        ((< second 259200)(se (*(/ second 86400)1.0) 'days))
        ((< second 31536000)(se (* (/ second 259200)1.0) 'months))
        (else(se (*(/ second 31536000)1.0) 'years))))
                                   
                              
                                       
            
                                               
            
            