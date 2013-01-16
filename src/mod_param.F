MODULE PARAM
# if defined PARALLEL
       use mpi
# endif
       IMPLICIT NONE

# if defined DOUBLE_PRECISION 
       INTEGER, PARAMETER::SP=8
# if defined PARALLEL
       INTEGER, PARAMETER::MPI_SP=MPI_DOUBLE_PRECISION
# endif
# else
       INTEGER, PARAMETER::SP=SELECTED_REAL_KIND(6,30)
# if defined PARALLEL
       INTEGER, PARAMETER::MPI_SP=MPI_REAL
# endif
# endif

! define parameters
       REAL(SP), PARAMETER::pi=3.141592653
       REAL(SP), PARAMETER::R_earth = 6371000.0_SP
       REAL(SP), PARAMETER::SMALL=0.000001_SP
       REAL(SP), PARAMETER::LARGE=100000.0_SP
       REAL(SP), PARAMETER:: grav=9.81_SP
       REAL(SP), PARAMETER:: zero = 0.0_SP
       REAL(SP), PARAMETER:: RHO_AW = 0.0012041_SP
       REAL(SP), PARAMETER:: DEG2RAD = 0.0175_SP

! some global variables
       INTEGER :: I,J,K
       INTEGER :: itmp1,itmp2,itmp3,itmp4,itmp5
       REAL(SP):: tmp1,tmp2,tmp3,tmp4,tmp5

# if defined (ITERATION)
! give a maximum iteration number of 2 like in Nwogu 
       INTEGER :: ITER_NUM = 2
       REAL(SP) :: ERRORi = 0.0001_SP
# endif

END MODULE PARAM
