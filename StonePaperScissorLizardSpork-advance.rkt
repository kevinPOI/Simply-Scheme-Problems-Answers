(define (letter_to_num hand)
  (cond ((equal? hand 'stone)0)
                              ((equal? hand 'paper)1)
                              ((equal? hand 'scissor)2)
                              ((equal? hand 'lizard)3)
                              ((equal? hand 'spock)4)
                              (else 5)))
(define (num_to_letter pc)
  (cond ((= pc 0) 'stone)
    ((= pc 1) 'paper)
      ((= pc 2) 'scissor)
    ((= pc 3) 'lizard)
  ((= pc 4) 'spock)))
(define (RNG)
  (random 5))
(define (spsls hand)
  (let* ((pc (RNG))(x (modulo (- pc (letter_to_num hand))5))(result (se '(pc used)(num_to_letter pc)'(and you used)hand) ))
    (cond ((= x 0)'(tie\, you and the pc used the same thing))
          ((> x 2)(se '(you win!) result))
          ((< x 3)(se '(you loss!) result))
          (else 'x))))
          


                                                               
    

    