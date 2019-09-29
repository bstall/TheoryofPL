IDENTIFICATION DIVISION.
	PROGRAM-ID. VARS.
 
	DATA DIVISION.
	WORKING-STORAGE SECTION.
	    *>defines number with 3 digits, decimal, and 2 more digits
		01 FIRST-VAR PIC S9(3)V9(2).
		*>assigns number variable a value
        01 SECOND-VAR PIC S9(3)V9(2) VALUE -123.45.
        *>alpha string variable
        01 THIRD-VAR PIC A(6) VALUE 'ABCDEF'.
        *>alphanumeric variable
        01 FOURTH-VAR PIC X(5) VALUE 'A121$'.
        *>group of variables
        01 GROUP-VAR.
            05 SUBVAR-1 PIC 9(3) VALUE 337.
            *>use less of the allocated space for the strings
            05 SUBVAR-2 PIC X(15) VALUE 'LALALALA'.
            05 SUBVAR-3 PIC X(15) VALUE 'LALALA'.
            05 SUBVAR-4 PIC X(15) VALUE 'LALALA'.
 
            *> print out variables
        PROCEDURE DIVISION.
            DISPLAY "1ST VAR :"FIRST-VAR.
            DISPLAY "2ND VAR :"SECOND-VAR.
            DISPLAY "3RD VAR :"THIRD-VAR.
            DISPLAY "4TH VAR :"FOURTH-VAR.
            DISPLAY "GROUP VAR :"GROUP-VAR.
	STOP RUN.