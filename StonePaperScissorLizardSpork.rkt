(define (spsls hand)

  (let* ((pc (random 5))(x(cond ((equal? hand 'scissor)0)
                              ((equal? hand 'paper)1)
                              ((equal? hand 'stone)2)
                              ((equal? hand 'lizard)3)
                              ((equal? hand 'spock)4)
                              (else 5)))
     (result (se '( because you used) hand '(and pc used) (cond ((= pc 0) 'scissor)
                                                                ((= pc 1) 'paper)
                                                                ((= pc 2) 'stone)
                                                                ((= pc 3) 'lizard)
                                                                ((= pc 4) 'spock)))))
    

    (cond ((= x pc)(se 'tie result))
          ;scissor
          ((= x 0)(cond ((= pc 1)(se 'win result))
                           ((= pc 2)(se 'loss result))
                           ((= pc 3)(se 'win result))
                           ((= pc 4) (se 'loss result))))
          ;paper
          ((= x 1)(cond ((= pc 2)(se 'win result))
                           ((= pc 3)(se 'loss result))
                           ((= pc 4)(se 'win result))
                           ((= pc 0)(se 'loss result))))
          ;stone
          ((= x 2)(cond ((= pc 3)(se 'win result))
                           ((= pc 4)(se 'loss result))
                           ((= pc 0)(se 'win result))
                           ((= pc 1)(se 'loss result))))
          ;lizard
          ((= x 3)(cond ((= pc 4)(se 'win result))
                           ((= pc 0)(se 'loss result))
                           ((= pc 1)(se 'win result))
                           ((= pc 2)(se 'loss result))))
          ;spock
          ((= x 4)(cond ((= pc 0)(se 'win result))
                           ((= pc 1)(se 'loss result))
                           ((= pc 2)(se 'win result))
                           ((= pc 3)(se 'loss result))))
          ((= x 5)(se '(debug: invalid input\, please enter stone， paper， scissor， lizard， or spock)))
          ))
 )
   
  
                     
                     
                     
                     