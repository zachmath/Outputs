!-----------------------------------------------------------------------------!
! This file is part of the official HFODD v2.49t release and demonstrates     !
! the use the multi-core mode of HFODD.                                       !
!                                                process-dependent input file !
!-----------------------------------------------------------------------------!

CALCULMODE ! MPIDEF, MPIBAS
               4       0
CONSTR_DEF ! IFCONS
               1
ALL_FORCES ! NUMERO, SKYRME
               1      UNE1
ALL_NUCLEI ! IZSTRT, IZSTEP, NSTEPZ, INSTRT, INSTEP, NSTEPN
              78       2      1      98      2       1
MULTICONST ! LAMBDA,   MIU,  QBEGIN,  QFIN,  NUMBERQ
              -2       0      01.0    345.0    87 
              -3       0      00.0    103.0    1 
               1       0      00.0    103.0    1 
BASIS-FREQ ! O_MINI, O_STEP, NOFFRE
              8.0     0.1      1
BASIS-NSHL ! N_MINI, N_STEP, NOFSHL
               8       2       1
BASIS-DEFS ! B20MIN, B20STP, NOFB20
              0.0     0.1      1
END_DATA   
