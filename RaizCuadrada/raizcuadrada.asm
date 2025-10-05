// Busqueda binaria para raiz cuadrada
// Entrada: N en M[18] 
// Salida: parte entera de la sqrt(N) en M[19]
// Variables temp: M[0]-M[6], M[7]-M[9]
// M[7] = dividendo, M[8] = factor, M[9] = res
// n = M[18] (copia local)
@18
D=M
@0
M=D

// lo = 0
@1
M=0

// hi = n
@0
D=M
@2
M=D

// ans = 0
@3
M=0

// while (lo <= hi)
(WHILE)
@1
D=M
@2
D=D-M
@END_WHILE
D;JGT

// mid = (lo + hi) / 2
@1
D=M
@2
D=D+M
@4
M=D
@2
D=A
@5
M=D
@6
M=0
@4
D=M
@7
M=D

(BUCLE_DIVISION)
@7
D=M
@5
D=D-M
@FIN_DIVISION
D;JLT
@7
D=M
@5
D=D-M
@7
M=D
@6
M=M+1
@BUCLE_DIVISION
0;JMP

(FIN_DIVISION)
// mid = cociente
@6
D=M
@4
M=D

// sq = mid * mid
@4
D=M
@8
M=D
@9
M=0

(LOOP_MULT)
@8
D=M
@MULT_END
D;JEQ
@9
D=M
@4
D=D+M
@9
M=D
@8
M=M-1
@LOOP_MULT
0;JMP

(MULT_END)
// Comparar res con n
@9
D=M
@0
D=D-M
@EXACT_MATCH
D;JEQ
@LESS_THAN
D;JLT

// sq > n: hi = mid - 1
@4
D=M-1
@2
M=D
@WHILE
0;JMP

(LESS_THAN)
// ans = mid, lo = mid + 1
@4
D=M
@3
M=D
@4
D=M+1
@1
M=D
@WHILE
0;JMP

(EXACT_MATCH)
@4
D=M
@3
M=D
@END_WHILE
0;JMP

(END_WHILE)
// Guardar resultado en M[19]
@3
D=M
@19
M=D

// Limpiar variables temporales (NO tocar M[18] y M[19])
@0
M=0
@1
M=0
@2
M=0
@3
M=0
@4
M=0
@5
M=0
@6
M=0
@7
M=0
@8
M=0
@9
M=0

(FIN)
@FIN
0;JMP