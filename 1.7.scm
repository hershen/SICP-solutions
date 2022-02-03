;For very small number the tollarance of 0.001 is insufficient. For example, (sqrt 0.0001) yields .03230844833048122 instead of 0.01.
;For very large numbers the difference that the 'improve' method does might be ignored due to the finite precision that numbers are represented in the computer. Therefore, the 'sqrt-iter' will enter an infinite loop because it can never satisfy the 'good-enough?' check. For example, (sqrt 1e13) gets stuck with a guess of 3162277.6601683795 because (average 3162277.6601683795 1e13/3162277.6601683795) is .001953125, is larger than 0.001 and therefore 'good-enough?' returns false. But the 'improve' with that guess produces the exact same guess, entering an infinite loop.
(load "chapter1library.scm")


;With the new implementation in chapter1library, under 1.1.7, (sqrt 0.0001) yields 1.0000000025490743e-2, and (sqrt 1e14) yields 10000000.000043957.
