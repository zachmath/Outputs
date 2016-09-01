!-----------------------------------------------------------------------------!
! This file is part of the official HFODD v2.49t release and demonstrates     !
! the use the multi-core mode of HFODD.                                       !
!                                              process-independent input file !
!-----------------------------------------------------------------------------!

                      ----------  General data  -----------
NUCLIDE      IN_FIX  IZ_FIX
              98     78 
ITERATIONS   NOITER
              1000
ITERAT_EPS   EPSITE
             3.e-4
SLOW_DOWN    SLOWEV  SLOWOD
              0.5    0.5
SLOW_PAIR    SLOWPA
              0.5
SLOWLIPKIN   SLOWLI
              0.5
BROYDEN      IBROYD  N_ITER  ALPHAM  BROTRI
                0      10     0.6   1000.0
MAXANTIOSC   NULAST
               5
PING-PONG    EPSPNG  NUPING
              0.01     5
CHAOTIC      NUCHAO
               20
RPA_CONSTR   IF_RPA
               1
                      -------- Additional features --------
SHELLCORCT   IFSHEL
               0
SHELLPARAM   GSTRUN  GSTRUP  HOMFAC  NPOLYN
              1.66     1.54  1000.0    10
HFBTHOISON   IF_THO  CBETHO
               0       0.0
MASSFRAGME   IFRAGM
               1
FRAGDENSIT   IDEALL  IDELOC  IDECON
               0       0       0


                      -----------  Interaction  -----------
SKYRME-SET   SKYRME
              UDF1
UNEDF_PROJ   IF_EDF
               1
SKYRME-STD   ISTAND  KETA_J  KETA_W  KETACM  KETA_M
               1       0       1       1       0
COULOMBPAR   ICOTYP  ICOUDI  ICOUEX
               7       1       1
COULOMB      NUMCOU  NUMETA  FURMAX
               80      79      0.25
YUKAWATERM   PIMASS  PNMASS  YUKAGT  YUKAG0  YUKAG1  YUKAG2  IYUTYP  I_YUKA
             0.7045  4.7565    1.0     0.0     0.0     0.0     1       0

                      ----------    Pairing    ------------
PAIRING      IPAIRI
               1
HFB          IPAHFB
               1          
BCS          IPABCS    
               0                                                                
G_AUTOCALC   IAVRGG       
               0 
G_SCALING    FACTGN  FACTGP   
              0.0     0.0
PAIRNINTER   PRHO_N  PRHOSN  POWERN 
             -268.90   0.32    1.0                                              
PAIRPINTER   PRHO_N  PRHOSN  POWERN 
             -332.50   0.32    1.0                                              
HFBMEANFLD   IMFHFB
               0  
LIPKIN       LIPKIN  LIPKIP                                                     
               0       0  
FIXLAMB2_N   FE2FIN  IF2FIN
             -0.00     0
FIXLAMB2_P   FE2FIP  IF2FIP
             -0.00     0 
                     -----------  Symmetries  -------------
ROTATION     IROTAT
               0
SIMPLEXY     ISIMPY
               1
SIGNATUREY   ISIGNY
               0
PARITY       IPARTY
              -1
TSIMPLEX3D   ISIMTX  ISIMTY  ISIMTZ
               1      -1       0

                     ----------  Configurations  ----------
VACSIG_NEU       PPSP  PPSM  PMSP  PMSM
                  29    29    34    34
VACSIG_PRO       PPSP  PPSM  PMSP  PMSM
                  22    22    19    19
VACSIM_NEU        SP    SM
                  63    63
VACSIM_PRO        SP    SM
                  41    41

                     ----  Parameters of the HO basis  ----
BASIS_SIZE   NOSCIL  NLIMIT  ENECUT
              30      1140    800.0
BASISAUTOM   IBASIS
               1
HOMEGAZERO   FCHOM0
              1.2
OPTI-GAUSS   IOPTGS
               0
GAUSHERMIT   NXHERM  NYHERM  NZHERM
               36      36      60
SURFAC_PAR   INNUMB  IZNUMB  R0PARM
              98     78      1.23
SURFAC_DEF   LAMBDA   MIU    ALPHAR
               -2      0      0.00
                4      0      0.00
                     -----------  Constraints  ------------
OMEGAY       OMEGAY
              0.00
MAX_MULTIP   NMUCON  NMUCOU  NMUPRI
                4      4       4
               MULTCONSTR   LAMBDA   MIU    STIFFQ   QASKED  IFLAGQ
                2      0      0.5       0.0     1
                2      2      0.5       0.0     1

                     ------  Output-file  parameters  -----
ONE_LINE     I1LINE
               1
EALLMINMAX   EMINAL  EMAXAL
              -70.    10.

                     --------------  Files  ---------------
REVIEWFILE   FILREV
            hfodd.rev
RECORDFILE   FILREC
            hfodd.rec
REPLAYFILE   FILREP
            hfodd.rec
COULOMFILE   FILCOU
            hfodd.cou
REVIEW       IREVIE
                0
COULOMSAVE   ICOULI  ICOULO
                0       0         
READ_WOODS   IWOODS
                0

                     ------  Starting the iteration  ------
RESTART      ICONTI
               1
CONT_PAIRI   IPCONT
               1
CONTLIPKIN   ILCONT
               0
CONTFIELDS   IFCONT
               0

                     ------------  Calculate  -------------
EXECUTE        
                     ------------  Terminate  -------------
ALL_DONE           
