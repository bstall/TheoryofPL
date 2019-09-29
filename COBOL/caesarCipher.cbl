	IDENTIFICATION DIVISION.
	Author. Barbara Stall
	PROGRAM-ID. COBOL_CAESAR_CIPHER.
	ENVIRONMENT DIVISION.

	DATA DIVISION.
		WORKING-STORAGE SECTION.
		01 str PIC x(20) VALUE "STALL CIPHER TEST".
		01 offset binary PIC 9(4) VALUE 5.
		01 takeChars PIC x(26).
		01 putChars PIC x(26).
		01 caesarTable.
			02 PIC x(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
			02 PIC x(26) VALUE "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
		01 i PIC 9(2) VALUE 1.
	
	PROCEDURE DIVISION.
		begin.
		DISPLAY "Original: " str.
		PERFORM encryption.
		DISPLAY "Encrypted: " str.
		PERFORM decryption.
		DISPLAY "Decrypted: " str.
		
		encryption.
			MOVE caesarTable(1:26) to takeChars.
				MOVE caesarTable(1 + offset:26) to putChars.
				INSPECT str CONVERTING takeChars to putChars.
		decryption.
			MOVE caesarTable(1 + offset:26) to takeChars.
			MOVE caesarTable(1:26) to putChars.
			INSPECT str CONVERTING takeChars to putChars.
		solve.
			MOVE caesarTable(1 + offset:26) to takeChars.
			MOVE caesarTable(1:26) to putChars.
		    INSPECT str CONVERTING takeChars to putChars.
		    DISPLAY "CASE " i ": " str.
		    
		
		PERFORM solve VARYING i FROM 1 BY 1 UNTIL i = 26.
				
		STOP RUN.