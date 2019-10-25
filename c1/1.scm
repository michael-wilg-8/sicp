(+ 2 3)
(* (+ 2 (* 4 6))
   (+ 3 5 7))


(define (square x) (* x x))

(square 21)

(square (+ 2 5))

(square (square 3))


(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)


(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)


(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) -x)
        ))

(define x 99)
(define y 100)
(define (>= x y) (not (< x y)))

                                        ; Excercise 1.1

10

;9
(+ 5 3 4)

;8
(- 9 1)

;3
(/ 6 2)

;6
(+ (* 2 4)(- 4 6))

;a = 3
(define a 3)

;b = 4
(define b (+ a 1))

;19
(+ a b (* a b))

;true
(= a b)

;4 (b)
(if (and (> b a) (< b (* a b)))
    b
    a)

;16
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)
      )

;6 = 2 + b
(+ 2 (if (> b a) b a))

;16= 4 * b
(*
 (cond ((> a b) a)
       ((< a b) b)
       (else -1)
       )
 (+ a 1)
 )

                                        ; Excercise 1.2

;-37/150
(/
 (+
  5
  4
  (- 2 (- 3 (+ 6 (/ 4 5))))
 )
 (* 3 (- 6 2) (- 2 7))
)


                                        ; Excercise 1.3

(define (sum_biggest_two a b c)
  (if (> a b)
      (if (> b c)
          (sum-of-squares a b)
          (sum-of-squares a c))
      (if (> a c)
          (sum-of-squares b a)
          (sum-of-squares b c))))

(sum_biggest_two 1 2 3)
(sum_biggest_two 3 2 1)
(sum_biggest_two 2 3 1)
(sum_biggest_two 3 1 2) 
(sum_biggest_two 2 1 3)

                                        ; Exercise 1.4
                                        ; if b > 0: then a + b
                                        ; if b < 0: then a - (-b) = a + b


                                        ; Excercise 1.5
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

