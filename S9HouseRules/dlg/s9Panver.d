// Kit Tomes for Baldur's Gate
//Dialogue: Panver
//Author : Smeagolheart

BEGIN ~s9PANVER~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN s9Store1
SAY ~Friend, today is your lucky day.  Panver the Loremaster, that's me, is selling his prized possessions.  Have you yearned for the skills of a specialized professional? ~
=~With one of my Magical Career Tomes you may skip all the tedium and exertion normally required to learn those skills!  The secrets of hidden knowledge await you within one of these powerful magical books.  You need only provide the gold to purchase it and the power is yours!  Are you interested?~
	++ ~Yes, I'd like to see what you have~ GOTO s91_2
	++ ~Are your tomes dangerous?~ + s91_4
	++ ~Do you have anything for Thieves, Bards, or other professions?~ + s91_5
	++ ~What is an Elf like you doing here selling these things?~ + s91_6
	++ ~Will you be getting more any more tomes soon?~ + s91_8
	++ ~No thanks.~ GOTO s91_3	
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDialogue
SAY ~Ah, you have returned.  I knew you had good taste.~
	IF ~~ + 3
END

IF ~True()~ THEN BEGIN 3
SAY ~Would you like to see my Magical Career Tomes?~
	++ ~Yes, show me your wares.~ + s91_2
	++ ~Are your tomes dangerous?~ + s91_4
	++ ~Do you have anything for Thieves, Bards, or perhaps other professions?~ + s91_5
	++ ~What is an Elf like you doing here selling these things?~ + s91_6
	++ ~No thanks, I'm not interested.~ + s91_3	
END

IF ~~ THEN BEGIN 4
SAY ~So tell me <SIRMAAM>, would you like to see my Magical Career Tomes or not?~
	++ ~Yes, show me your wares.~ + s91_2
	++ ~Are your tomes dangerous?~ + s91_4
	++ ~Do you have anything for Thieves, Bards, or perhaps other professions?~ + s91_5
	++ ~What is an Elf like you doing here selling these things?~ + s91_6	
	++ ~No, I'm not interested...~ + s91_3
END
	
IF ~~ THEN BEGIN s91_2
SAY ~Excellent, have a look.~
	IF ~~ THEN DO ~StartStore("s9panver",Player1)~ EXIT
END

IF ~~ THEN BEGIN s91_3
SAY ~If you change your mind, I'll be here!  Tomes here!  Get one of Panver's Magical Career Tomes here!~
	IF ~~ EXIT
END

IF ~~ THEN BEGIN s91_4
SAY ~Look <SIRMAAM>, it's like this: there are plenty of other adventurers around willing to risk their necks plunging into the unknown.~
= ~The mere rumor of a dropped gold piece, a legendary scrap of paper, or the promise of reward is all but guaranteed to draw a herd of would-be adventurers.  But I don't make money by sitting here explaining myself to you.  I don't have time to play at those games.  Save your games, good customer, because no warranty is implied or offered.~
	IF ~~ + 4
END

IF ~~ THEN BEGIN s91_5
SAY ~Yes, I do have a few books for those professions.  I do not normally offer them alongside my other texts because these editions have been known to be somewhat unpredictable.  It's likely these tomes will not work exactly as intended.~
= ~With that being said, I will show them to you if you'd like to see them.  Remember, there are NO refunds and I do not want any unsatisfied customers.  Would you like to see my special tomes?~
	++ ~Yes, show me your special tomes.~ + s91_7
	++ ~Only show me your standard tomes.~ + s91_2
	++ ~What do you mean "unpredictable"?~ + s91_9
	++ ~No, I'm not interested...~ + s91_3
END

IF ~~ THEN BEGIN s91_6
SAY ~I am not an elf <SIRMAAM>!  Elven features are a family trait and all my sibilings have them to some degree.  My grandmother once mentioned that *her* grandmother may have dabbled on the pointy side of the street if you know what I mean!  As to why I'm selling these precious artifacts at rock bottom prices suffice to say that I require a large sum of money quickly.  I will not elaborate further on my personal financial matters.~
	IF ~~ + 3
END

IF ~~ THEN BEGIN s91_7
SAY ~Ok here are my special tomes then.~
	IF ~~ THEN DO ~StartStore("s9panves",Player1)~ EXIT
END

IF ~~ THEN BEGIN s91_8
SAY ~No.  What you see is what I have.  I have no way to replenish my stock, Magic tomes don't grow on trees you know.  Only the paper necessary to write them does!  If you see something you like, I'd suggest you buy it immediately lest some other rich adventurers wander by and beat you to it!~
	IF ~~ + 3
END

IF ~~ THEN BEGIN s91_9
SAY ~I have been told results depend on the individual.  His or her level of skill at his profession may affect the results.  For example, I knew of one young bard that tried to gain the specialized training of a Blade and wound up more skilled at picking pockets than if he had begun his career as a Blade to begin with!~
= ~This worked out fortuitously for him.  I am a humble merchant, I cannot guarantee that the effects will always be beneficial.  I offer these tomes with a word of warning outside of my normal selection because I wouldn't want you to feel cheated.~
	IF ~~ + s91_4
END