;================================================================
; File: KankerPayudara.CLP
; ===============================================================
; (load "D:\\KULIAH SMT 5\\IF3170 Inteligensi Buatan\\Tubes 2\\AI_Tubes2\\KankerPayudara.CLP")

; ======================================
; defrule Start
; ======================================

(defrule start
=>
	(assert (phase start)))

; ======================================
; Rule untuk input
; ======================================

(defrule inputMCP
	?p <- (phase start)
	(not (mean_concave_points ?x))
=>
	(printout t "mean_concave_points? ")
    (assert(mean_concave_points(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateMCP
	(declare (salience 99))
	?mcp <- (mean_concave_points ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?mcp)
	(retract ?p)
	(assert (phase start))
)

(defrule inputWR
	?p <- (phase start)
	(mean_concave_points ?x)
	(not (worst_radius ?y))
	
=>
	(printout t "worst_radius? ")
    (assert(worst_radius(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateWR
	(declare (salience 99))
	?a <- (worst_radius ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule InputWP
	?p <- (phase start)
	(worst_radius ?x)
	(not (worst_perimeter ?y))
=>
	(printout t "worst_perimeter? ")
	(assert(worst_perimeter(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateWP
	(declare (salience 99))
	?a <- (worst_perimeter ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputRE
	?p <- (phase start)
	(worst_perimeter ?x)
	(not (radius_error ?y))
=>
	(printout t "radius_error? ")
	(assert(radius_error(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateRE
	(declare (salience 99))
	?a <- (radius_error ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputMT
	?p <- (phase start)
	(radius_error ?x)
	(not (mean_texture ?y))
=>
	(printout t "mean_texture? ")
	(assert(mean_texture(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateMT
	(declare (salience 99))
	?a <- (mean_texture ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputWT
	?p <- (phase start)
	(mean_texture ?x)
	(not (worst_texture ?y))
=>
	(printout t "worst_texture? ")
	(assert(worst_texture(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateWT
	(declare (salience 99))
	?a <- (worst_texture ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputMS
	?p <- (phase start)
	(worst_texture ?x)
	(not (mean_smoothness ?y))
=>
	(printout t "mean_smoothness? ")
	(assert(mean_smoothness(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateMS
	(declare (salience 99))
	?a <- (mean_smoothness ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputCPE
	?p <- (phase start)
	(mean_smoothness ?x)
	(not (concave_points_error ?y))
=>
	(printout t "concave_points_error? ")
	(assert(concave_points_error(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateCPE
	(declare (salience 99))
	?a <- (concave_points_error ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputWCP
	?p <- (phase start)
	(concave_points_error ?x)
	(not (worst_concave_points ?y))
=>
	(printout t "worst_concave_points? ")
	(assert(worst_concave_points(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateWCP
	(declare (salience 99))
	?a <- (worst_concave_points ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputPE
	?p <- (phase start)
	(worst_concave_points ?x)
	(not (perimeter_error ?y))
=>
	(printout t "perimeter_error? ")
	(assert(perimeter_error(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validatePE
	(declare (salience 99))
	?a <- (perimeter_error ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputWA
	?p <- (phase start)
	(perimeter_error ?x)
	(not (worst_area ?y))
=>
	(printout t "worst_area? ")
	(assert(worst_area(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateWA
	(declare (salience 99))
	?a <- (worst_area ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule inputMR
	?p <- (phase start)
	(worst_area ?x)
	(not (mean_radius ?y))
=>
	(printout t "mean_radius? ")
	(assert(mean_radius(read)))
	(retract ?p)
	(assert (phase validate))
    )

(defrule validateMR
	(declare (salience 99))
	?a <- (mean_radius ?x)
	(test (or (not (numberp ?x)) (<= ?x 0)))
	?p <- (phase validate)
=>
	(printout t "input salah, coba lagi." crlf)
	(retract ?a)
	(retract ?p)
	(assert (phase start))
)

(defrule valid
	?p <- (phase validate)
=>
	(retract ?p)
	(assert (phase start))
)

; ======================================
; Rule untuk menentukan 0 / 1
; ======================================
; adin
(defrule highWP
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
    (worst_perimeter ?wp)
	(test (numberp ?mcp))
	(test (numberp ?wp))
    (test (> ?mcp 0.05))
    (test (> ?wp 114.45))
=>
	(retract *)
	(assert(hasil 0))
	(assert(phase end))
    )

(defrule lowWCP
	(declare (salience 99))
	(phase start)
	(worst_concave_points ?wcp)
	(worst_texture ?wt)
	(worst_perimeter ?wp)
	(mean_concave_points ?mcp)
	(test (numberp ?wcp))
	(test (numberp ?wt))
	(test (numberp ?wp))
	(test (numberp ?mcp))
	(test (<= ?wcp 0.17))
	(test (< ?wt 25.65))
	(test (<= ?wp 114.45))
	(test (> ?mcp 0.05))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )

(defrule highWCP
	(declare (salience 99))
	(phase start)
	(worst_concave_points ?wcp)
	(worst_texture ?wt)
	(worst_perimeter ?wp)
	(mean_concave_points ?mcp)
	(test (numberp ?wcp))
	(test (numberp ?wt))
	(test (numberp ?wp))
	(test (numberp ?mcp))
	(test (> ?wcp 0.17))
	(test (<= ?wt 25.65))
	(test (<= ?wp 114.45))
	(test (> ?mcp 0.05))
=>
	(retract *)
	(assert(hasil 0))
	(assert(phase end))
    )

(defrule lowMR
	(declare (salience 99))
	(phase start)
	(mean_radius ?mr)
	(perimeter_error ?pe)
	(worst_texture ?wt)
	(worst_perimeter ?wp)
	(mean_concave_points ?mcp)
	(test (numberp ?mr))
	(test (numberp ?pe))
	(test (numberp ?wt))
	(test (numberp ?wp))
	(test (numberp ?mcp))
	(test (<= ?mr 13.34))
	(test (<= ?pe 1.56))
	(test (> ?wt 25.65))
	(test (<= ?wp 114.45))
	(test (> ?mcp 0.05))
=>
	(retract *)
	(assert(hasil 0))
	(assert(phase end))
    )

(defrule highMR
	(declare (salience 99))
	(phase start)
	(mean_radius ?mr)
	(perimeter_error ?pe)
	(worst_texture ?wt)
	(worst_perimeter ?wp)
	(mean_concave_points ?mcp)
	(test (numberp ?mr))
	(test (numberp ?pe))
	(test (numberp ?wt))
	(test (numberp ?wp))
	(test (numberp ?mcp))
	(test (> ?mr 13.34))
	(test (<= ?pe 1.56))
	(test (> ?wt 25.65))
	(test (<= ?wp 114.45))
	(test (> ?mcp 0.05))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )

(defrule highPE
	(declare (salience 99))
	(phase start)
	(perimeter_error ?pe)
	(worst_texture ?wt)
	(worst_perimeter ?wp)
	(mean_concave_points ?mcp)
	(test (numberp ?pe))
	(test (numberp ?wt))
	(test (numberp ?wp))
	(test (numberp ?mcp))
	(test (> ?pe 1.56))
	(test (> ?wt 25.65))
	(test (<= ?wp 114.45))
	(test (> ?mcp 0.05))
=>
	(retract *)
	(assert(hasil 0))
	(assert(phase end))
    )

; ahan
(defrule lowWT
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
	(worst_radius ?wr)
	(radius_error ?re)
	(worst_texture ?wt)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?re))
 	(test (numberp ?wt))

	(test (<= ?mcp 0.05))
	(test (<= ?wr 16.83))
	(test (<= ?re 0.63))
	(test (<= ?wt 30.15))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )

(defrule lowWA
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
	(worst_radius ?wr)
	(radius_error ?re)
    (worst_texture ?wt)
	(worst_area ?wa)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?re))
 	(test (numberp ?wt))
 	(test (numberp ?wa))

	(test (<= ?mcp 0.05))
	(test (<= ?wr 16.83))
	(test (<= ?re 0.63))
	(test (> ?wt 30.15))
	(test (<= ?wa 641.60))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )

(defrule highMR
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
    (worst_radius ?wr)
    (radius_error ?re)
    (worst_texture ?wt)
    (worst_area ?wa)
    (mean_radius ?mr)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?re))
 	(test (numberp ?wt))
 	(test (numberp ?wa))
 	(test (numberp ?mr))

    (test (<= ?mcp 0.05))
    (test (<= ?wr 16.83))
    (test (<= ?re 0.63))
    (test (> ?wt 30.15))
    (test (> ?wa 641.60))
    (test (> ?mr 13.45))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )

(defrule lowMT
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
    (worst_radius ?wr)
    (radius_error ?re)
    (worst_texture ?wt)
    (worst_area ?wa)
    (mean_radius ?mr)
    (mean_texture ?mt)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?re))
 	(test (numberp ?wt))
 	(test (numberp ?wa))
 	(test (numberp ?mr))
 	(test (numberp ?mt))

    (test (<= ?mcp 0.05))
    (test (<= ?wr 16.83))
    (test (<= ?re 0.63))
    (test (> ?wt 30.15))
    (test (> ?wa 641.60))
    (test (<= ?mr 13.45))
    (test (<= ?mt 28.79))
=>
	(retract *)
	(assert(hasil 0))
	(assert(phase end))
    )

(defrule highMT
	(declare (salience 99))
	(phase start)
    (mean_concave_points ?mcp)
    (worst_radius ?wr)
    (radius_error ?re)
    (worst_texture ?wt)
    (worst_area ?wa)
    (mean_radius ?mr)
    (mean_texture ?mt)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?re))
 	(test (numberp ?wt))
 	(test (numberp ?wa))
 	(test (numberp ?mr))
 	(test (numberp ?mt))

    (test (<= ?mcp 0.05))
    (test (<= ?wr 16.83))
    (test (<= ?re 0.63))
    (test (> ?wt 30.15))
    (test (> ?wa 641.60))
    (test (<= ?mr 13.45))
    (test (> ?mt 28.79))
=>
    (retract *)
	(assert(hasil 1))
	(assert(phase end))
    )
;

; Furqon
(defrule lowMS
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
	(worst_radius ?wr)
	(radius_error ?re)
	(mean_smoothness ?ms)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?re))
 	(test (numberp ?ms))

	(test  (<= ?mcp 0.05))
	(test  (<= ?wr 16.83))
	(test (> ?re 0.63))
	(test  (<= ?ms 0.09))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )
;

(defrule highMS
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
	(worst_radius ?wr)
	(radius_error ?re)
	(mean_smoothness ?ms)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?re))
 	(test (numberp ?ms))

	(test  (<= ?mcp 0.05))
	(test  (<= ?wr 16.83))
	(test (> ?re 0.63))
	(test (> ?ms 0.09))
=>
	(retract *)
	(assert(hasil 0))
	(assert(phase end))
    )
;

(defrule lowMT2
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
	(worst_radius ?wr)
	(mean_texture ?mt)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?mt))

	(test  (<= ?mcp 0.05))
	(test (> ?wr 16.83))
	(test  (<= ?mt 16.19))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )
;

(defrule lowCPE
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
	(worst_radius ?wr)
	(mean_texture ?mt)
	(concave_points_error ?cpe)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?mt))
 	(test (numberp ?cpe))

	(test  (<= ?mcp 0.05))
	(test (> ?wr 16.83))
	(test (> ?mt 16.19))
	(test  (<= ?cpe 0.01))
=>
	(retract *)
	(assert(hasil 0))
	(assert(phase end))
    )
;

(defrule highCPE
	(declare (salience 99))
	(phase start)
	(mean_concave_points ?mcp)
	(worst_radius ?wr)
	(mean_texture ?mt)
	(concave_points_error ?cpe)
 	(test (numberp ?mcp))
 	(test (numberp ?wr))
 	(test (numberp ?mt))
 	(test (numberp ?cpe))

	(test  (<= ?mcp 0.05))
	(test (> ?wr 16.83))
	(test (> ?mt 16.19))
	(test  (> ?cpe 0.01))
=>
	(retract *)
	(assert(hasil 1))
	(assert(phase end))
    )
;

; ======================================
; Rule printout hasil prediksi
; ======================================
(defrule isnotKanker
    (phase end)
    (hasil 0)
=>
    (retract *)
    (printout t "Hasil Prediksi = Tidak terprediksi Kanker Payudara" crlf)
    )

(defrule isKanker
    (phase end)
    (hasil 1)
=>
    (retract *)
    (printout t "Hasil Prediksi = Terprediksi Kanker Payudara" crlf)
    )