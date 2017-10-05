(define (describe-time1 second)
  (cond ((< second 60)(se second 'seconds))
        ((< second 3600)(se (*(/ second 60)1.0)'minutes))
        ((< second 86400)(se (*(/ second 3600)1.0) 'hours))
        ((< second 259200)(se (*(/ second 86400)1.0) 'days))
        ((< second 31536000)(se (* (/ second 259200)1.0) 'months))
        (else(se (*(/ second 31536000)1.0) 'years))))
(define (describe-time second)
  (let* ((min (/ second 60))
        (hr (/ min 60 ))
        (day (/ hr 24))
        (months (/ hr 30)))
   ( cond((< second 60)(se second 'seconds))
         ((< second 3600)(se min 'minutes))
         ((< second 86400)(se hr 'hours))
         ((< second 259200)(se day 'days))
         ((< second 31536000)(se months 'months)))))


 (define (vowel? letter) (member? letter '(a e i o u)))
(define (getrude wd)
  (let((wd1 (se (if (vowel? (first wd))'an 'a) wd 'is)))
    (se wd1 wd1 (bl wd1))))
;7.1
(define (qf a b c)0
 (se (/ (+ (- 0 b)(sqrt (- (* b b) (* 4 a c)))) (* 2 a))
     (/ (- (- 0 b)(sqrt (- (* b b) (* 4 a c)))) (* 2 a))))
;7.2
 (let ((pi 3.14159)(pie '(lemon pie))) (se '(pi is) pi '(but pie is) pie))
 ;7.3
 (define (superlative adjective wd)
  (se (word adjective 'est) wd))
 ;7.4
 (define (sum-square a b)
  (let ((+ *)
        (* +))
    (* (+ a a) (+ b b))))