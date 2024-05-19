(set-logic QF_LIA)
(set-info :source | 10人站队，甲不能站两端，与乙相邻，与丙隔两个人，且在丁后面，问这四人有多少种站队方法 | )
(declare-fun xA () Int)
(declare-fun xB () Int)
(declare-fun xC () Int)
(declare-fun xD () Int)
(assert (and (> xA 1) (< xA 10)))
(assert (and (>= xB 1) (<= xB 10)))
(assert (and (>= xC 1) (<= xC 10)))
(assert (and (>= xD 1) (<= xD 10)))
(assert (and (not (= xA xB)) (not (= xA xC)) (not (= xA xD)) (not (= xB xC)) (not (= xB xD)) (not (= xC xD))))
(assert (or (= xA (- xB 1)) (= xA (+ xB 1))))
(assert (or (= (- xA xC) 3) (= (- xC xA) 3)))
(assert (> xA xD))
(check-sat)
(get-model)
(exit)