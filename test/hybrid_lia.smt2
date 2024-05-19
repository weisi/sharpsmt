(set-logic QF_LIA)
(set-info :test.smt2)
(set-info :smt-lib-version 2.0)
(set-info :status sat)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)
(declare-fun a () Bool)
(declare-fun b () Bool)
(assert (<= x 2))
(assert (>= x (- 2)))
(assert (<= y 2))
(assert (>= y (- 2)))
(assert (<= z 2))
(assert (>= z (- 2)))
(assert (or (and (xor a b (< (- x  y) 1)) (<= z 0)) (and (>= (- x y) 1) (> z 1))))
(check-sat)
(exit)
