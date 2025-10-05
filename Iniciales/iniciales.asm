// Punto de entrada principal del programa
(INICIAR)
    // Configurar parámetros para mostrar las iniciales
    @0
    D=A
    @R12
    M=D
    @DESPUES_INICIAL
    D=A
    @R13
    M=D
    @INICIO
    0;JMP
(DESPUES_INICIAL)
    // Después de mostrar las iniciales, iniciar el bucle de teclado
    @BUCLE_TECLADO
    0;JMP

(INICIO)
    // put bitmap location value in R12
    // put code return address in R13
    @SCREEN
    D=A
    @R12
    AD=D+M
    // row 1
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 2
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @32512 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @254 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 3
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 4
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @32767 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 5
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16381 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 6
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @8185 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 7
    D=A // D holds previous addr
    @23
    AD=D+A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @4081 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 8
    D=A // D holds previous addr
    @23
    AD=D+A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16640 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @2017 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @253 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 9
    D=A // D holds previous addr
    @23
    AD=D+A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @961 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 10
    D=A // D holds previous addr
    @23
    AD=D+A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @32382 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 11
    D=A // D holds previous addr
    @23
    AD=D+A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16380 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 12
    D=A // D holds previous addr
    @23
    AD=D+A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8184 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 13
    D=A // D holds previous addr
    @23
    AD=D+A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @4080 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 14
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @2016 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 15
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @960 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 16
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 17
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 18
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 19
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 20
    D=A // D holds previous addr
    @24
    AD=D+A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 21
    D=A // D holds previous addr
    @24
    AD=D+A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 22
    D=A // D holds previous addr
    @24
    AD=D+A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 23
    D=A // D holds previous addr
    @24
    AD=D+A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 24
    D=A // D holds previous addr
    @24
    AD=D+A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 25
    D=A // D holds previous addr
    @24
    AD=D+A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 26
    D=A // D holds previous addr
    @24
    AD=D+A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @8129 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 27
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 28
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 29
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 30
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 31
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 32
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 49
    D=A // D holds previous addr
    @535
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 50
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @256 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @32512 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @254 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 51
    D=A // D holds previous addr
    @23
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @768 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @15616 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1
    AD=A+1 // D holds addr
    @195 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 52
    D=A // D holds previous addr
    @23
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @768 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @32000 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @32767 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @193 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 53
    D=A // D holds previous addr
    @23
    AD=D+A
    @13 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @3328 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @207 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @32767 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @2 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16381 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 54
    D=A // D holds previous addr
    @23
    AD=D+A
    @13 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @3328 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @207 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @32767 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @2 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @29440 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24582 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @206 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 55
    D=A // D holds previous addr
    @23
    AD=D+A
    @51 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @3328 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @12300 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @207 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 56
    D=A // D holds previous addr
    @23
    AD=D+A
    @51 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @19712 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @26599 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @205 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 57
    D=A // D holds previous addr
    @23
    AD=D+A
    @51 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13261 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 58
    D=A // D holds previous addr
    @23
    AD=D+A
    @51 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @26214 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 59
    D=A // D holds previous addr
    @23
    AD=D+A
    @51 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13260 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 60
    D=A // D holds previous addr
    @23
    AD=D+A
    @51 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6552 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 61
    D=A // D holds previous addr
    @23
    AD=D+A
    @51 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @3120 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 62
    D=A // D holds previous addr
    @23
    AD=D+A
    @13 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @3328 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @207 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @1632 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 63
    D=A // D holds previous addr
    @23
    AD=D+A
    @13 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @3328 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @207 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @960 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 64
    D=A // D holds previous addr
    @23
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @768 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 65
    D=A // D holds previous addr
    @23
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @768 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 66
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @12289 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @3328 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24576 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 67
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @12289 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @3328 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @24639 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 68
    D=A // D holds previous addr
    @24
    AD=D+A
    @13312 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @24639 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 69
    D=A // D holds previous addr
    @24
    AD=D+A
    @13312 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @24627 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 70
    D=A // D holds previous addr
    @24
    AD=D+A
    @13312 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @24627 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 71
    D=A // D holds previous addr
    @24
    AD=D+A
    @13312 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @24627 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 72
    D=A // D holds previous addr
    @24
    AD=D+A
    @13312 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @24627 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 73
    D=A // D holds previous addr
    @24
    AD=D+A
    @13312 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @24627 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 74
    D=A // D holds previous addr
    @24
    AD=D+A
    @13312 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @24627 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 75
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @12289 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @32755 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 76
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @12289 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @32755 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 77
    D=A // D holds previous addr
    @23
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 78
    D=A // D holds previous addr
    @23
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16384 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    @3 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @6 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @204 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 79
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @13056 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 80
    D=A // D holds previous addr
    @23
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    M=-1
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    D=A // D holds previous addr
    @3
    AD=D+A
    M=-1
    AD=A+1 // D holds addr
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1 // D holds addr
    @16128 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    AD=A+1
    AD=A+1 // D holds addr
    @252 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // return
    @R13
    A=M
    D;JMP

(BUCLE_TECLADO)
    @KBD
    D=M
    @80  // código ASCII para la letra 'P'
    D=D-A
    @DETECTAR_P
    D;JEQ
    
    @KBD
    D=M
    @77  // código ASCII para la letra 'M'
    D=D-A
    @DETECTAR_M
    D;JEQ
    
        @KBD
        D=M
        @74  // código ASCII para la letra 'J'
        D=D-A
        @DETECTAR_J
        D;JEQ
        
        @KBD
        D=M
        @83  // código ASCII para la letra 'S'
        D=D-A
        @DETECTAR_S
        D;JEQ
        
        // Si no se presiona 'P', 'M', 'J' ni 'S', continuar monitoreando el teclado
        @BUCLE_TECLADO
        0;JMP

(DETECTAR_P)
    // Limpiar toda la pantalla
    @SCREEN
    D=A
    @dir_pantalla
    M=D
    @8192  // Total de palabras de pantalla (32 filas × 256 columnas)
    D=A
    @contador
    M=D
(BUCLE_LIMPIAR_P)
    @contador
    D=M
    @DIBUJAR_P
    D;JEQ
    @dir_pantalla
    A=M
    M=0
    @dir_pantalla
    M=M+1
    @contador
    M=M-1
    @BUCLE_LIMPIAR_P
    0;JMP

(DIBUJAR_P)
    // Preparar parámetros para dibujar las letras P
    @0
    D=A
    @R12
    M=D
    @ESPERAR_SOLTAR_P
    D=A
    @R13
    M=D
    @IMPRIMIR_P
    0;JMP

// Esperar a que se suelte la tecla P
(ESPERAR_SOLTAR_P)
    // Esperar a que se suelte la tecla P
    @KBD
    D=M
    @ESPERAR_SOLTAR_P
    D;JNE
    
    // Regresar al monitoreo del teclado
    @BUCLE_TECLADO
    0;JMP

// Funciones para manejar la tecla M
(DETECTAR_M)
    // Limpiar toda la pantalla
    @SCREEN
    D=A
    @dir_pantalla
    M=D
    @8192  // Total de palabras de pantalla (32 filas × 256 columnas)
    D=A
    @contador
    M=D
(BUCLE_LIMPIAR_M)
    @contador
    D=M
    @DIBUJAR_M
    D;JEQ
    @dir_pantalla
    A=M
    M=0
    @dir_pantalla
    M=M+1
    @contador
    M=M-1
    @BUCLE_LIMPIAR_M
    0;JMP

(DIBUJAR_M)
    // Preparar parámetros para dibujar las letras M
    @0
    D=A
    @R12
    M=D
    @ESPERAR_SOLTAR_M
    D=A
    @R13
    M=D
    @IMPRIMIR_M
    0;JMP
    
// Esperar a que se suelte la tecla M
(ESPERAR_SOLTAR_M)
    @KBD
    D=M
    @ESPERAR_SOLTAR_M
    D;JNE
    
    // Regresar al monitoreo del teclado
    @BUCLE_TECLADO
    0;JMP

// Funciones para manejar la tecla J
(DETECTAR_J)
    // Limpiar toda la pantalla
    @SCREEN
    D=A
    @dir_pantalla
    M=D
    @8192  // Total de palabras de pantalla (32 filas × 256 columnas)
    D=A
    @contador
    M=D
(BUCLE_LIMPIAR_J)
    @contador
    D=M
    @DIBUJAR_J
    D;JEQ
    @dir_pantalla
    A=M
    M=0
    @dir_pantalla
    M=M+1
    @contador
    M=M-1
    @BUCLE_LIMPIAR_J
    0;JMP

(DIBUJAR_J)
    // Preparar parámetros para dibujar las letras J
    @0
    D=A
    @R12
    M=D
    @ESPERAR_SOLTAR_J
    D=A
    @R13
    M=D
    @IMPRIMIR_J
    0;JMP
    
// Esperar a que se suelte la tecla J
(ESPERAR_SOLTAR_J)
    @KBD
    D=M
    @ESPERAR_SOLTAR_J
    D;JNE
    
    // Regresar al monitoreo del teclado
    @BUCLE_TECLADO
    0;JMP

// Funciones para manejar la tecla S
(DETECTAR_S)
    // Limpiar toda la pantalla
    @SCREEN
    D=A
    @dir_pantalla
    M=D
    @8192  // Total de palabras de pantalla (32 filas × 256 columnas)
    D=A
    @contador
    M=D
(BUCLE_LIMPIAR_S)
    @contador
    D=M
    @DIBUJAR_S
    D;JEQ
    @dir_pantalla
    A=M
    M=0
    @dir_pantalla
    M=M+1
    @contador
    M=M-1
    @BUCLE_LIMPIAR_S
    0;JMP

(DIBUJAR_S)
    // Preparar parámetros para dibujar las letras S
    @0
    D=A
    @R12
    M=D
    @ESPERAR_SOLTAR_S
    D=A
    @R13
    M=D
    @IMPRIMIR_S
    0;JMP
    
// Esperar a que se suelte la tecla S
(ESPERAR_SOLTAR_S)
    @KBD
    D=M
    @ESPERAR_SOLTAR_S
    D;JNE
    
    // Regresar al monitoreo del teclado
    @BUCLE_TECLADO
    0;JMP

(IMPRIMIR_P)
	// R12 contiene la ubicación del bitmap
	// R13 contiene la dirección de retorno
	@SCREEN
	D=A
	@R12
	AD=D+M
	// fila 1
	M=-1
	AD=A+1 // D contiene la dirección
	M=-1
	// fila 2
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	M=-1
	AD=A+1 // D contiene la dirección
	M=-1
	// row 3
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 4
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 5
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 6
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 7
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 8
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 9
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 10
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 11
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 12
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 13
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 14
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 15
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 16
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 19
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 20
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 21
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 22
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 23
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 24
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 25
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 26
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 27
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 28
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 29
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 30
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 31
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 32
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 49
	D=A // D holds previous addr
	@544
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 50
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 51
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 52
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 53
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 54
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 55
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 56
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 57
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 58
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 59
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 60
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 61
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 62
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 63
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 64
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 65
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 66
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=-1
	// row 67
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=-1
	// row 68
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 69
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 70
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 71
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 72
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 73
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 74
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 75
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 76
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 77
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 78
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 79
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 80
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// retornar
	@R13
	A=M
	D;JMP

(IMPRIMIR_M)
	// R12 contiene la ubicación del bitmap
	// R13 contiene la dirección de retorno
	@SCREEN
	D=A
	@R12
	AD=D+M
	// fila 1
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 2
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@127 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@512 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 3
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@255 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@256 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 4
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@511 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@128 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 5
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@1023 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@64 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 6
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@2047 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@32 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 7
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@4095 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@16 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 8
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@8127 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@520 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 9
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@16191 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@772 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 10
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@32319 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@898 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 11
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@961 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@961 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 12
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@1985 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@993 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 13
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@4033 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@1009 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 14
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@8129 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@1017 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 15
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@16321 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@1021 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 16
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@32705 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@1023 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 17
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 18
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 19
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 20
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 21
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 22
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 23
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 24
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 25
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 26
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 27
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 28
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 29
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 30
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 31
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 32
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 49
	D=A // D contiene la dirección anterior
	@543
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 50
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@127 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@512 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 51
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@195 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@15616 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 52
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@387 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@16000 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 53
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@819 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13120 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 54
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@1651 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@12704 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 55
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@3315 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@12496 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 56
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@6579 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@12904 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 57
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@13107 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13108 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 58
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@26163 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13210 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 59
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@13261 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@13261 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 60
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@26573 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@13287 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 61
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@12339 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13300 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 62
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@24627 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13306 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 63
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@16333 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@13309 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 64
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@32717 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	AD=A+1 // D contiene la dirección
	@13311 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 65
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 66
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 67
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 68
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 69
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 70
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 71
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 72
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 73
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 74
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 75
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 76
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 77
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 78
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@51 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@13312 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 79
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// fila 80
	D=A // D contiene la dirección anterior
	@31
	AD=D+A
	@63 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=D-A // RAM[dirección] = valor
	AD=A+1 // D contiene la dirección
	@1024 // A contiene el valor
	D=D+A // D = dirección + valor
	A=D-A // A=dirección + valor - valor = dirección
	M=A-D // RAM[dirección]=-valor
	// retornar
	@R13
	A=M
	D;JMP

(IMPRIMIR_J)
	// put bitmap location value in R12
	// put code return address in R13
	@SCREEN
	D=A
	@R12
	AD=D+M
	// row 1
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 2
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 3
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 4
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 5
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 6
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 7
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 8
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 9
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 10
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 11
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 12
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 13
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 14
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 15
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 16
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	@8192 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 19
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 20
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 21
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 22
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 23
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 24
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 25
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 26
	D=A // D holds previous addr
	@31
	AD=D+A
	@8129 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 27
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 28
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 29
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 30
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 31
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 32
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 49
	D=A // D holds previous addr
	@543
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 50
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 51
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 52
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 53
	D=A // D holds previous addr
	@31
	AD=D+A
	@32767 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 54
	D=A // D holds previous addr
	@31
	AD=D+A
	@32767 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 55
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 56
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 57
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 58
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 59
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 60
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 61
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 62
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 63
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 64
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 65
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 66
	D=A // D holds previous addr
	@31
	AD=D+A
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 67
	D=A // D holds previous addr
	@31
	AD=D+A
	@24639 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 68
	D=A // D holds previous addr
	@31
	AD=D+A
	@24639 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 69
	D=A // D holds previous addr
	@31
	AD=D+A
	@24627 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 70
	D=A // D holds previous addr
	@31
	AD=D+A
	@24627 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 71
	D=A // D holds previous addr
	@31
	AD=D+A
	@24627 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 72
	D=A // D holds previous addr
	@31
	AD=D+A
	@24627 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 73
	D=A // D holds previous addr
	@31
	AD=D+A
	@24627 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 74
	D=A // D holds previous addr
	@31
	AD=D+A
	@24627 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 75
	D=A // D holds previous addr
	@31
	AD=D+A
	@32755 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 76
	D=A // D holds previous addr
	@31
	AD=D+A
	@32755 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 77
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 78
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@6 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 79
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 80
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// return
	@R13
	A=M
	D;JMP

(IMPRIMIR_S)
	// put bitmap location value in R12
	// put code return address in R13
	@SCREEN
	D=A
	@R12
	AD=D+M
	// row 1
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 2
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 3
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 4
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 5
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 6
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 7
	D=A // D holds previous addr
	@31
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 8
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 9
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 10
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 11
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 12
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 13
	D=A // D holds previous addr
	@32
	AD=D+A
	@63 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 14
	D=A // D holds previous addr
	@32
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 15
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 16
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 17
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 18
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 19
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 20
	D=A // D holds previous addr
	@32
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 21
	D=A // D holds previous addr
	@32
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 22
	D=A // D holds previous addr
	@32
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 23
	D=A // D holds previous addr
	@32
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 24
	D=A // D holds previous addr
	@32
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 25
	D=A // D holds previous addr
	@32
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 26
	D=A // D holds previous addr
	@32
	AD=D+A
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 27
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 28
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 29
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 30
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 31
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 32
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 49
	D=A // D holds previous addr
	@543
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 50
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 51
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 52
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 53
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=-1
	// row 54
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=-1
	// row 55
	D=A // D holds previous addr
	@31
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 56
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 57
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 58
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 59
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 60
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 61
	D=A // D holds previous addr
	@32
	AD=D+A
	@51 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	// row 62
	D=A // D holds previous addr
	@32
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=-1
	// row 63
	D=A // D holds previous addr
	@31
	AD=D+A
	@13 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=-1
	// row 64
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 65
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 66
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 67
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 68
	D=A // D holds previous addr
	@32
	AD=D+A
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 69
	D=A // D holds previous addr
	@32
	AD=D+A
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 70
	D=A // D holds previous addr
	@32
	AD=D+A
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 71
	D=A // D holds previous addr
	@32
	AD=D+A
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 72
	D=A // D holds previous addr
	@32
	AD=D+A
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 73
	D=A // D holds previous addr
	@32
	AD=D+A
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 74
	D=A // D holds previous addr
	@32
	AD=D+A
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 75
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 76
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	@12289 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 77
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 78
	D=A // D holds previous addr
	@31
	AD=D+A
	@3 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	// row 79
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// row 80
	D=A // D holds previous addr
	@31
	AD=D+A
	M=-1
	AD=A+1 // D holds addr
	M=-1
	// return
	@R13
	A=M
	D;JMP
