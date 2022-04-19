BEGIN ~WMART2~ 

IF ~True()~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY  @2  DO ~StartStore("wmart2",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY  @3  EXIT
END
