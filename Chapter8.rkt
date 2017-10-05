(define (vowel? wd)
  (member? wd '(a e i o u)))
#|
8.1
(every last '(algebra purple spaghetti tomato gnu))
'(a e i o u)

> (keep number? '(one two three four))
'()
> (accumulate * '(6 7 13 0 9 42 17))
0
> (member? 'h (keep vowel? '(t h r o a t)))
#f
> (every square (keep even? '(87 4 7 12 0 5)))

> (accumulate word (keep vowel? (every first '(and i love her))))
'ai
> ((repeated square 0) 25)
1
> (every (repeated bl 2) '(good day sunshine))
'(good)
|#
#|
8.2
> (every vowel? 'birthday)
IA

> (every first '(golden slumbers))
(G S)

> (first '(golden slumbers))
GOLDEN

> (every last'(little child))
(E D)

> (se (every last '(little child)))
ED

> (every + '(2 3 4 5))
(2 3 4 5)

> (accumulate + '(2 3 4 5))
14
|#

(define (f a)
  (keep even? a) );keep all the even digits in a

(define (g b)
  ((every b '(blue jay way))));it will do procedure b to every word in '(blue jay way)


(define (h c d)
  (c (c d)));it will do procedure c to d two times

(define (i e)
  (/ (accumulate + e) (count e)));devide the sum of e and it's number of items

accumulate ;it will add all the functions

sqrt; it will take the square rrot

repeated; it will do something multiple time

(repeated sqrt 3);do sqrt 3 times)

(repeated even? 2);do even? 2 times

(repeated first 2) ; do first 2 times

(repeated (repeated bf 3) 2); output nothing
(- 2(- 3 4))

#|
8.5  Write a procedure transform-beatles that takes a procedure as an argument, applies it to each of the Beatles, and returns the results in a sentence: 

(define (amazify name)
  (word 'the-amazing- name))


> (transform-beatles amazify)
(THE-AMAZING-JOHN THE-AMAZING-PAUL THE-AMAZING-GEORGE
 THE-AMAZING-RINGO)

> (transform-beatles butfirst)
(OHN AUL EORGE INGO)
|#
;【8.5】
(define (amazify name)
  (word 'the-amazing- name))
(define (trans_b pro)
  (se (pro 'John) (pro 'Paul)(pro 'George)(pro 'Ringo)))
(define (words char)
  (accumulate word))
;【8.6】
(define (represented wd)
  (cond ((equal? wd 'a)'answer)
        ((equal? wd 'b)'boy)
        ((equal? wd 'c)'cut)
        ((equal? wd 'd)'dog)
        ((equal? wd 'e)'earth)
        ((equal? wd 'f)'fish)
        ((equal? wd 'g)'great)
        ((equal? wd 'h)'hellow)
        ((equal? wd 'i)'island)
        ((equal? wd 'j)'just)
        ((equal? wd 'k)'kick)
        ((equal? wd 'l)'large)
        ((equal? wd 'm)'must)
        ((equal? wd 'n)'not)))
(define (words string)
  (every represented (every se string)))


;(accumulate word '(hellow world))
;【8.7】
(define (letter_ct sent)
  (count (accumulate word sent)))
;【8.8】

(define (exaggerate_char char)
  (if ((number? char)(* char 2))
      ((equal? char 'good) 'great)
      ((eqaul? char 'bad) 'terrible
      )))
(define(exg char)
  (cond ((number? char)(* char 2))
        ((equal? char 'good)'great)
        ((equal? char 'bad)'terrible)
        (else char))
        )
(define (exaggerate string)
  (every exg string))
#|【8.9】
8.9  What procedure can you use as the first argument to every so that for any sentence used as the second argument, every returns that sentence?
   se
What procedure can you use as the first argument to keep so that for any sentence used as the second argument, keep returns that sentence?
   se
What procedure can you use as the first argument to accumulate so that for any sentence used as the second argument, accumulate returns that sentence?
   se
|#
(accumulate se '(I like fishes))
;【8.10】
(define (ture_for_all pro string)
  (if (= (count string)(count (keep pro string)))'#t '#f))
(define (gpa x)
  (cond (( equal? x 'A)'4)
        (( equal? x 'A-) '3.7)
        (( equal? x 'B+) '3.3)
        (( equal? x 'B) '3.0)
        (( equal? x 'B- ) '2.7)
        ))
;【8.11】
(define (gpa_calc grades)
  (/ (accumulate + (every gpa grades)) (count grades)))