      SUBROUTINE LENGTH(DLENG ,DLENM ,ITACT ,ITDES )
      IMPLICIT DOUBLE PRECISION (A-H,O-Z)
C***********************************************************************
C ADJUSTS STEP LENGTH ACCORDING TO THE DESIRED NUMBER OF ITERATIONS AND
C THE NUMBER OF ITERATIONS REQUIRED FOR CONVERGENCE IN THE PREVIOUS
C LOAD STEP (USED FOR ARC-LENGTH METHOD ONLY)
C
C REFERENCE: Expression (5.3)
C***********************************************************************
      DLENG=DLENG*DBLE(ITDES)/DBLE(ITACT)
      DLENG=MIN(DLENG,DLENM)
      RETURN
      END