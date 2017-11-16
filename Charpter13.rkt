#|13.1  Trace the explode procedure from page there and invoke 

(explode 'ape)
|  (explode 'pe)
|   |  (explode 'e)
|   |   '(e)
|   '(p e)
'(a p e)

|#
#|
13.4  Here is a Scheme procedure that never finishes its job: 

(define (forever n)
  (if (= n 0)
      1
      (+ 1 (forever n))))
Explain why it doesn't give any result. (If you try to trace it, make sure you know how to
 make your version of Scheme stop what it's doing and give you another prompt.)
ANS: Because the number n do not change in every recursion, so it never equals to zero
|#
#|13.6  As part of computing (factorial 6), Scheme computes (factorial 2) and gets the
answer 2. After Scheme gets that answer, how does it know what to do next?
ANS: it evaluates factorial 3,whih is 3 times factorial 2, and it continues to evaluates up|#
(define (double wd)
  (if (= (count wd) 1)
      ""
      (if (equal? (first wd)
          (first (bf wd)))
          ((word (first wd)(first (bf wd))(double (bf wd))))
          (double (bf wd)))))
(define (double2 wd)
  (cond ((equal? (first wd)(first (bf wd)))
         (word (first wd)(first (bf wd))
              (doble2 (bf (bf wd)))))))