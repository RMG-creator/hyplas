      INTEGER FUNCTION NWORD(CHRSTR,IWBEG,IWEND)
      IMPLICIT NONE
      CHARACTER*(*) CHRSTR
      INTEGER IWBEG(*), IWEND(*)
      LOGICAL OUT
      INTEGER I, LEN, LENGTH
C***********************************************************************
C FIND NUMBER OF WORDS CONTAINED IN A CHARACTER STRING AND SET POINTERS
C TO BEGINNING AND END OF EACH WORD
C***********************************************************************
      LENGTH=LEN(CHRSTR)
      NWORD=0
      OUT=.TRUE.
      DO 10 I=1,LENGTH
        IF(OUT)THEN
          IF(CHRSTR(I:I).NE.' ')THEN
            OUT=.FALSE.
            NWORD=NWORD+1
            IWBEG(NWORD)=I
          ENDIF
        ELSE
          IF(CHRSTR(I:I).EQ.' ')THEN
            OUT=.TRUE.
            IWEND(NWORD)=I-1
          ELSEIF(I.EQ.LENGTH)THEN
            IWEND(NWORD)=I
          ENDIF
        ENDIF
   10 CONTINUE
      RETURN
      END
