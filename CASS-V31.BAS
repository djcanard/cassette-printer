10 A=16:SST=40:CLS:SCREEN 9:WIDTH 80:COLOR 15,A:KEY OFF
20 LINE (190,50)-(410,50),15
30 LINE (190,50)-(190,149)
40 LINE (410,50)-(410,149)
50 LINE (190,150)-(410,150)
60 CIRCLE (245,90),17
70 CIRCLE (245,90),23
80 CIRCLE (355,90),17
90 CIRCLE (355,90),23
100 LINE (223,125)-(377,125)
110 LINE (214,150)-(223,125)
120 LINE (378,125)-(388,150)
130 LINE (185,121)-(185,143)
140 LINE (416,121)-(416,143)
150 LINE (185,121)-(190,121)
160 LINE (185,144)-(190,144)
170 LINE (416,144)-(410,144)
180 LINE (416,120)-(410,120)
190 LINE (200,65)-(400,65)
200 LINE (200,65)-(200,118)
210 LINE (400,65)-(400,118)
220 LINE (200,118)-(400,118)
230 CIRCLE (245,140),5
240 CIRCLE (357,140),5
250 CIRCLE (268,137),4
260 CIRCLE (332,137),4
270 LOCATE 10,26:PRINT "A"
280 PAINT (195,55),8,15
290 PAINT (260,130),8,15
300 PAINT (245,140),15,15
310 PAINT (357,140),15,15
320 PAINT (268,137),15,15
330 PAINT (332,137),15,15
340 PAINT (187,123),8,15
350 PAINT (415,143),8,15
360 PAINT (220,80),7,15
370 PAINT (230,80),15,15
380 PAINT (370,80),15,15
390 PAINT (245,90),3,15
400 PAINT (355,90),3,15
410 LINE (0,30)-(650,30),4
420 LINE (0,32)-(650,32),4
430 LINE (0,31)-(650,31),15
440 T$="Cassette Printer v 3.1"
450 IF DATE$="12-25-1992" THEN T$="Mall-ware wenst u een geweldig kerstfeest 1992 22"
460 IF DATE$="12-25-1993" THEN T$="Mall-ware wenst u een geweldig kerstfeest 1993 22"
470 IF DATE$="12-25-1994" THEN T$="Mall-ware wenst u een geweldig kerstfeest 1994 22"
480 IF DATE$="12-25-1995" THEN T$="Mall-ware wenst u een geweldig kerstfeest 1995 22"
490 IF DATE$="12-25-1996" THEN T$="Mall-ware wenst u een geweldig kerstfeest 1996 22"
500 IF DATE$="12-25-1997" THEN T$="Mall-ware wenst u een geweldig kerstfeest 1997 22"
510 LOCATE 2,21:PRINT "(C) 1992 Mall-ware, Patrick Malgo":GOTO 620
520 L=LEN(T$)+32
530 P$=SPACE$(30)
540 T$=SPACE$(30)+T$+SPACE$(30)
550 FOR N=1 TO L
560 MID$(P$,1,30)=MID$(T$,N,30)
570 LOCATE 13,24:COLOR 14:PRINT P$
580 FOR J=0 TO 200:NEXT J:NEXT N
590 A$=INKEY$
600 IF A$=" " THEN GOTO 710
610 GOTO 550
620 LINE (0,219)-(650,219),4
630 LINE (0,220)-(650,220),15
640 LINE (0,221)-(650,221),9
650 LINE (0,239)-(650,239),4
660 LINE (0,240)-(650,240),15
670 LINE (0,241)-(650,241),9:COLOR 15,16
680 LOCATE 17,18:PRINT "Druk op de spatiebalk om verder te gaan..."
690 PLAY"mbO3D.E8MLG8MNF#8MLE8MND8F#AO4DC#8.D16O3BAMLF#8.MNG16MLA8MNF#8E2D"
700 GOTO 520
710 COLOR 15,A:CLS:LOCATE 1,25:COLOR 14:PRINT CHR$(174);CHR$(174);CHR$(174);" CASSETTE PRINTER ";CHR$(175);CHR$(175);CHR$(175)
720 LINE (0,17)-(650,17),4
730 LINE (0,18)-(650,18),15
740 LINE (0,19)-(650,19),9
750 LINE (0,227)-(650,227),4
760 LINE (0,228)-(650,228),15
770 LINE (0,229)-(650,229),9
780 PRINT
790 COLOR 14:PRINT SPACE$(13);"(C) 1992 Mall-ware ";CHR$(196);CHR$(196);" Cassette printer v 3.1":COLOR 15
800 PRINT
810 COLOR 7:PRINT TAB(23);"1 = Hoofdtitel(s) invoeren"
820 COLOR 7:PRINT TAB(23);"2 = Songtitels invoeren"
830 COLOR 7:PRINT TAB(23);"3 = Eigenaar en type van cassettebandje"
840 COLOR 7:PRINT TAB(23);"4 = Uitvoeren op scherm of printer"
850 COLOR 7:PRINT TAB(23);"5 = Gegevens saven"
860 COLOR 7:PRINT TAB(23);"6 = Gegevens laden"
870 COLOR 7:PRINT TAB(23);"7 = Gegevens wissen"
880 COLOR 7:PRINT TAB(23);"8 = Stoppen"
890 COLOR 15:PRINT " Hoofdtitel 1 : ":COLOR 6:LOCATE 13,17:PRINT TI1$
900 COLOR 15:PRINT " Hoofdtitel 2 : ":COLOR 6:LOCATE 14,17:PRINT TI2$
910 COLOR 15:PRINT " Eigenaar is  : ":COLOR 6:LOCATE 15,17:PRINT VWB$:COLOR 15
920 COLOR 15:PRINT " Type cass.   : ":COLOR 6:LOCATE 16,17:PRINT TC$:COLOR 15
930 COLOR 7:LOCATE 19,2:PRINT "Typ 'S' als u de screen-save tijd wil veranderen =";SST;"seconden"
940 COLOR 7:LOCATE 21,2:PRINT "Typ '*' als u naar de hoofdmenu wilt..."
950 COLOR 7:LOCATE 23,2:PRINT "Druk op de 'spatiebalk' voor achtergrondkleur...":COLOR 15
960 S=TIMER
970 KZ$=INKEY$
980 COLOR 12:LOCATE 1,2:PRINT DATE$:LOCATE 1,72:PRINT TIME$:COLOR 15
990 IF A=63 THEN A=0
1000 IF KZ$="S" OR KZ$="s" THEN LOCATE 19,52:PRINT "    ":LOCATE 19,51:COLOR 7:INPUT SST:GOTO 710
1010 IF KZ$="1" THEN 1700:S=TIMER
1020 IF KZ$="2" THEN 1950:S=TIMER
1030 IF KZ$="3" THEN 4050:S=TIMER
1040 IF KZ$="4" THEN 3060:S=TIMER
1050 IF KZ$="5" THEN 1200:S=TIMER
1060 IF KZ$="6" THEN 1460:S=TIMER
1070 IF KZ$="7" THEN 4260:S=TIMER
1080 IF KZ$="8" THEN 2830:S=TIMER
1090 IF KZ$=" " THEN A=A+1:COLOR ,A:LOCATE 23,50:COLOR 7:PRINT A:S=TIMER
1100 IF F-S>SST THEN GOTO 1140
1110 IF KZ$="9" THEN 2830
1120 F=TIMER
1130 GOTO 970
1140 CLS:COLOR 15,0:LOCATE 10,25:PRINT "Druk op de 'spatiebalk'..."
1150 LOCATE 8,28:COLOR 7:PRINT "(C) 1992 Mall-ware"
1160 LOCATE 12,20:PRINT "Screen-Saver Cassette Printer v 3.1"
1170 T$=INKEY$
1180 IF T$=" " THEN GOTO 710
1190 GOTO 1170
1200 ' GEGEVENS OPSLAAN
1210 CLS
1220 LOCATE 1,1:PRINT SPACE$(26);"*** Gegevens opslaan ***"
1230 LINE (0,17)-(650,17),4
1240 LINE (0,18)-(650,18),15
1250 LINE (0,19)-(650,19),9
1260 LINE (0,146)-(650,146),4
1270 LINE (0,147)-(650,147),15
1280 LINE (0,148)-(650,148),9
1290 ON ERROR GOTO 1380:PRINT:PRINT SPACE$(9);"Hier kunt u de naam ingeven van de file die u wilt 'saven'."
1300 LOCATE 5,10:INPUT "De naam van de file ";NF$
1310 IF NF$="*" OR NF$="" THEN 710
1320 PRINT:PRINT "         Klopt de naam die u gegeven heeft (J/N) ?"
1330 KNG$=INKEY$
1340 IF KNG$="J" OR KNG$="j" THEN 1430
1350 IF KNG$="N" OR KNG$="n" THEN 1300
1360 IF KNG$="*" THEN 710
1370 GOTO 1330
1380 BEEP:LOCATE 9,10:PRINT "De naam die u heeft ingevoerd is niet toegestaan !"
1390 LOCATE 10,10:PRINT "Druk op de 'N' om de nieuwe naam in te voeren."
1400 NT$=INKEY$
1410 IF NT$="N" OR NT$="n" THEN GOTO 1210
1420 GOTO 1400
1430 CLOSE:OPEN NF$ FOR OUTPUT AS#1
1440 PRINT #1,TI1$;",";TI2$;",";TC$;",";VWB$;",";AT1$;",";AT2$;",";AT3$;",";AT4$;",";AT5$;",";AT6$;",";AT7$;",";AT8$;",";AT9$;",";AT10$;",";AT11$;",";BT1$;",";BT2$;",";BT3$;",";BT4$;",";BT5$;",";BT6$;",";BT7$;",";BT8$;",";BT9$;",";BT10$
1450 LOCATE 9,20:PRINT SPACE$(33);"Gegevens opgeslagen...":FOR GO=0 TO 2500:NEXT GO:GOTO 710
1460 ' GEGEVENS LADEN
1470 CLS:PRINT SPACE$(27);"*** Gegevens laden ***"
1480 LINE (0,17)-(650,17),4
1490 LINE (0,18)-(650,18),15
1500 LINE (0,19)-(650,19),9
1510 LINE (0,270)-(650,270),4
1520 LINE (0,271)-(650,271),15
1530 LINE (0,272)-(650,272),9
1540 ON ERROR GOTO 1690:PRINT:PRINT "         Hier kunt u de naam ingeven van de file die u wilt 'laden'."
1550 PRINT:INPUT "         In welke drive wilt u de files zien ";FZ$
1560 IF FZ$="*" OR FZ$="" THEN 710
1570 PRINT:FILES FZ$:LOCATE 21,32:PRINT FZ$
1580 LOCATE 21,1:INPUT "         De naam van de file ";NG$
1590 IF NG$="*" OR NG$="" THEN 710
1600 LOCATE 22,1:PRINT:PRINT "         Klopt de naam die u gegeven heeft (J/N) ?"
1610 KNG$=INKEY$
1620 IF KNG$="J" OR KNG$="j" THEN 1660
1630 IF KNG$="N" OR KNG$="n" THEN 1580
1640 IF KNG$="*" THEN GOTO 710
1650 GOTO 1610
1660 CLOSE:OPEN "I" ,#1, NG$
1670 INPUT #1,TI1$,TI2$,TC$,VWB$,AT1$,AT2$,AT3$,AT4$,AT5$,AT6$,AT7$,AT8$,AT9$,AT10$,AT11$,BT1$,BT2$,BT3$,BT4$,BT5$,BT6$,BT7$,BT8$,BT9$,BT10$
1680 LOCATE 19,20:PRINT SPACE$(33);"Gegevens geladen...":FOR GA=0 TO 2500:NEXT GA:GOTO 710
1690 BEEP:GOTO 1460
1700 ' KIES HOOFDTITEL(S)
1710 CLS
1720 LINE (0,17)-(650,17),4
1730 LINE (0,18)-(650,18),15
1740 LINE (0,19)-(650,19),9
1750 LINE (0,145)-(650,145),4
1760 LINE (0,146)-(650,146),15
1770 LINE (0,147)-(650,147),9
1780 LOCATE 6,27:PRINT "......................................"
1790 LOCATE 8,27:PRINT "......................................"
1800 LOCATE 1,23:PRINT "*** Hoofdtitel invoeren ***"
1810 PRINT
1820 PRINT "         De titel ziet u als hij in een rek staat.
1830 PRINT "         De titel mag niet langer zijn als 38 karakters.
1840 PRINT
1850 INPUT "         Wat is titel 1 ";TI1$
1860 PRINT
1870 INPUT "         Wat is titel 2 ";TI2$
1880 PRINT
1890 PRINT "         Kloppen de titels die u gekozen heeft (J/N) ?"
1900 TGK$=INKEY$
1910 IF TGK$="J" OR TGK$="j" THEN 710
1920 IF TGK$="N" OR TGK$="n" THEN 1710
1930 IF TGK$="*" THEN GOTO 710
1940 GOTO 1900
1950 ' KIES SONGTITELS
1960 CLS
1970 LINE (0,17)-(650,17),4
1980 LINE (0,18)-(650,18),15
1990 LINE (0,19)-(650,19),9
2000 LINE (0,240)-(650,240),4
2010 LINE (0,241)-(650,241),15
2020 LINE (0,242)-(650,242),9
2030 PRINT SPACE$(22);"*** Songtitels invoeren ***"
2040 PRINT
2050 PRINT "   U kunt maximaal 11 titels kiezen per kant (A/B)."
2060 PRINT "   Per titel kunt u 18 karakters typen. Typ '*' als u genoeg titels heeft."
2070 PRINT:R$=".................."
2080 LOCATE 6,24:PRINT R$
2090 LOCATE 7,24:PRINT R$
2100 LOCATE 8,24:PRINT R$
2110 LOCATE 9,24:PRINT R$
2120 LOCATE 10,24:PRINT R$
2130 LOCATE 11,24:PRINT R$
2140 LOCATE 12,24:PRINT R$
2150 LOCATE 13,24:PRINT R$
2160 LOCATE 14,24:PRINT R$
2170 LOCATE 15,24:PRINT R$
2180 LOCATE 16,24:PRINT R$
2190 LOCATE 6,3:INPUT " kant A:   titel 1 ";AT1$
2200 IF AT1$="*" THEN AT1$="":GOTO 2410
2210 INPUT "             titel 2 ";AT2$
2220 IF AT2$="*" THEN AT2$="":GOTO 2410
2230 INPUT "             titel 3 ";AT3$
2240 IF AT3$="*" THEN AT3$="":GOTO 2410
2250 INPUT "             titel 4 ";AT4$
2260 IF AT4$="*" THEN AT4$="":GOTO 2410
2270 INPUT "             titel 5 ";AT5$
2280 IF AT5$="*" THEN AT5$="":GOTO 2410
2290 INPUT "             titel 6 ";AT6$
2300 IF AT6$="*" THEN AT6$="":GOTO 2410
2310 INPUT "             titel 7 ";AT7$
2320 IF AT7$="*" THEN AT7$="":GOTO 2410
2330 INPUT "             titel 8 ";AT8$
2340 IF AT8$="*" THEN AT8$="":GOTO 2410
2350 INPUT "             titel 9 ";AT9$
2360 IF AT9$="*" THEN AT9$="":GOTO 2410
2370 INPUT "             titel 10";AT10$
2380 IF AT10$="*" THEN AT10$="":GOTO 2410
2390 INPUT "             titel 11";AT11$
2400 IF AT11$="*" THEN AT11$="":GOTO 2410
2410 CLS:PRINT SPACE$(22);"*** Songtitels invoeren ***"
2420 LINE (0,17)-(650,17),4
2430 LINE (0,18)-(650,18),15
2440 LINE (0,19)-(650,19),9
2450 LINE (0,240)-(650,240),4
2460 LINE (0,241)-(650,241),15
2470 LINE (0,242)-(650,242),9
2480 PRINT:PRINT "         Hier kunt u de titels invoeren voor kant B."
2490 LOCATE 6,24:PRINT R$
2500 LOCATE 7,24:PRINT R$
2510 LOCATE 8,24:PRINT R$
2520 LOCATE 9,24:PRINT R$
2530 LOCATE 10,24:PRINT R$
2540 LOCATE 11,24:PRINT R$
2550 LOCATE 12,24:PRINT R$
2560 LOCATE 13,24:PRINT R$
2570 LOCATE 14,24:PRINT R$
2580 LOCATE 15,24:PRINT R$
2590 LOCATE 16,24:PRINT R$
2600 LOCATE 6,3:INPUT " kant B:   titel 1 ";BT1$
2610 IF BT1$="*" THEN BT1$="":GOTO 2820
2620 INPUT "             titel 2 ";BT2$
2630 IF BT2$="*" THEN BT2$="":GOTO 2820
2640 INPUT "             titel 3 ";BT3$
2650 IF BT3$="*" THEN BT3$="":GOTO 2820
2660 INPUT "             titel 4 ";BT4$
2670 IF BT4$="*" THEN BT4$="":GOTO 2820
2680 INPUT "             titel 5 ";BT5$
2690 IF BT5$="*" THEN BT5$="":GOTO 2820
2700 INPUT "             titel 6 ";BT6$
2710 IF BT6$="*" THEN BT6$="":GOTO 2820
2720 INPUT "             titel 7 ";BT7$
2730 IF BT7$="*" THEN BT7$="":GOTO 2820
2740 INPUT "             titel 8 ";BT8$
2750 IF BT8$="*" THEN BT8$="":GOTO 2820
2760 INPUT "             titel 9 ";BT9$
2770 IF BT9$="*" THEN BT9$="":GOTO 2820
2780 INPUT "             titel 10";BT10$
2790 IF BT10$="*" THEN BT10$="":GOTO 2640
2800 INPUT "             titel 11";BT11$
2810 IF BT11$="*" THEN BT11$="":GOTO 2640
2820 GOTO 710
2830 ' STOPPEN
2840 CLS
2850 LINE (0,17)-(650,17),4
2860 LINE (0,18)-(650,18),15
2870 LINE (0,19)-(650,19),4
2880 LINE (0,80)-(650,80),4
2890 LINE (0,81)-(650,81),15
2900 LINE (0,82)-(650,82),4
2910 PRINT SPACE$(28);"*** Stoppen ***"
2920 PRINT:PRINT "         Wilt u echt stoppen (J/N) ?"
2930 SP$=INKEY$
2940 IF SP$="J" OR SP$="j" THEN 3000
2950 IF SP$="N" OR SP$="n" THEN 2980
2960 IF SP$="*" THEN GOTO 710
2970 GOTO 2930
2980 PRINT:PRINT "         De gegevens blijven bewaard !!"
2990 FOR GEG=0 TO 3000:NEXT GEG:GOTO 710
3000 PRINT:PRINT "         Wilt u meteen naar SYSTEM (J/N) ?"
3010 NS$=INKEY$
3020 IF NS$="J" OR NS$="j" THEN CLS:LOCATE 10,18:PRINT "Bedankt voor Cassette Printer op te starten...":FOR W=0 TO 5000:NEXT:SYSTEM
3030 IF NS$="N" OR NS$="n" THEN SCREEN 0:KEY ON:KEY 6,"SYSTEM"+CHR$(13):CLS:PRINT "GW-BASIC 3.32":PRINT "(C) Copyright Microsoft 1983,1984,1985,1986,1987,1988,1989":PRINT "60300 Bytes vrij":NEW:END
3040 IF NS$="*" THEN GOTO 710
3050 GOTO 3010
3060 ' UITVOEREN VAN HOESJE
3070 CLS
3080 LINE (0,17)-(650,17),4
3090 LINE (0,18)-(650,18),15
3100 LINE (0,19)-(650,19),9
3110 LINE (0,100)-(650,100),4
3120 LINE (0,101)-(650,101),15
3130 LINE (0,102)-(650,102),9
3140 PRINT SPACE$(24);"*** Uitvoeren van hoesje ***"
3150 PRINT
3160 LOCATE 3,10:PRINT "Als u op de 'P' drukt gaat hij printen."
3170 PRINT "         Als u op de 'S' drukt laat hij het voorbeeld op het scherm zien."
3180 PRINT "         Druk op de 'P' of 'S'."
3190 PS$=INKEY$
3200 IF PS$="P" OR PS$="p" THEN GOTO 3250
3210 IF PS$="S" OR PS$="s" THEN 3640
3220 IF PS$="*" THEN GOTO 710
3230 GOTO 3190
3240 ' PRINTEN
3250 PRINT:PRINT "         Een momentje aub...                  "
3260 ON ERROR GOTO 3270:GOTO 3280
3270 LOCATE 7,10:PRINT "Heeft u uw printer goed aangesloten ?":GOTO 3160
3280 LPRINT CHR$(27);CHR$(120);CHR$(49);"     :----------------------------------------:"
3290 LPRINT"      :          (C) 1992 MALL-WARE            :"
3300 LPRINT"      :                                        :"
3310 LPRINT"      :              ";TC$;TAB(48);":"
3320 LPRINT"      :----------------------------------------:"
3330 LPRINT"        ";TI1$
3340 LPRINT"        ";TI2$
3350 LPRINT"      :----------------------------------------:"
3360 LPRINT"      : KANT A:             KANT B:            :"
3370 LPRINT"      : ------------------  ------------------ :"
3380 LPRINT"      : ";AT1$;TAB(29);BT1$;TAB(48);":"
3390 LPRINT"      : ";AT2$;TAB(29);BT2$;TAB(48);":"
3400 LPRINT"      : ";AT3$;TAB(29);BT3$;TAB(48);":"
3410 LPRINT"      : ";AT4$;TAB(29);BT4$;TAB(48);":"
3420 LPRINT"      : ";AT5$;TAB(29);BT5$;TAB(48);":"
3430 LPRINT"      : ";AT6$;TAB(29);BT6$;TAB(48);":"
3440 LPRINT"      : ";AT7$;TAB(29);BT7$;TAB(48);":"
3450 LPRINT"      : ";AT8$;TAB(29);BT8$;TAB(48);":"
3460 LPRINT"      : ";AT9$;TAB(29);BT9$;TAB(48);":"
3470 LPRINT"      : ";AT10$;TAB(29);BT10$;TAB(48);":"
3480 LPRINT"      : ";AT11$;TAB(29);BT11$;TAB(48);":"
3490 LPRINT"      :";TAB(48);":"
3500 LPRINT"      :________________________________________:"
3510 LPRINT"      :                                        :"
3520 LPRINT"      :                                        :"
3530 LPRINT"      :  Dolby off / B / C                     :"
3540 LPRINT"      :  Type  I / II                          :"
3545 LPRINT"      :  IEC  0 / I / II                       :"
3550 LPRINT"      :  Master  / Copy                        :"
3560 LPRINT"      :  Stereo  / Mono                        :"
3570 LPRINT"      :  Datum        ";DATE$;TAB(48);":"
3580 LPRINT"      :  Tijd         ";TIME$;TAB(48);":"
3590 LPRINT"      :  Eigenaar   : ";VWB$;TAB(48);":"
3600 LPRINT"      :  Type Cass. : ";TC$;TAB(48);":"
3610 LPRINT"      :                                        :"
3620 LPRINT"      :________________________________________:"
3630 GOTO 710
3640 ' SCHERM
3650 LOCATE 10,14:PRINT "|----------------------------------------|"
3660 PRINT TAB(14);"|         (C) 1992 MALL-WARE             |"
3670 PRINT TAB(14);"|                                        |"
3680 PRINT TAB(14);"|                                        |"
3690 PRINT TAB(14);"|----------------------------------------|"
3700 PRINT TAB(14);"| ";TI1$;TAB(55);"|"
3710 PRINT TAB(14);"| ";TI2$;TAB(55);"|"
3720 PRINT TAB(14);"|----------------------------------------|"
3730 PRINT TAB(14);"| KANT A:             KANT B:            |"
3740 PRINT TAB(14);"| ------------------  ------------------ |"
3750 PRINT TAB(14);"| ";AT1$;TAB(36);BT1$;TAB(55);"|"
3760 PRINT TAB(14);"| ";AT2$;TAB(36);BT2$;TAB(55);"|"
3770 PRINT TAB(14);"| ";AT3$;TAB(36);BT3$;TAB(55);"|"
3780 PRINT TAB(14);"| ";AT4$;TAB(36);BT4$;TAB(55);"|"
3790 PRINT TAB(14);"| ";AT5$;TAB(36);BT5$;TAB(55);"|"
3800 PRINT TAB(14);"| ";AT6$;TAB(36);BT6$;TAB(55);"|"
3810 PRINT TAB(14);"| ";AT7$;TAB(36);BT7$;TAB(55);"|"
3820 PRINT TAB(14);"| ";AT8$;TAB(36);BT8$;TAB(55);"|"
3830 PRINT TAB(14);"| ";AT9$;TAB(36);BT9$;TAB(55);"|"
3840 PRINT TAB(14);"| ";AT10$;TAB(36);BT10$;TAB(55);"|"
3850 PRINT TAB(14);"| ";AT11$;TAB(36);BT11$;TAB(55);"|"
3860 PRINT TAB(14);"|                                        |"
3870 PRINT TAB(14);"|________________________________________|"
3880 PRINT TAB(14);"|                                        |"
3890 PRINT TAB(14);"|  Dolby off / B /C                      |"
3900 PRINT TAB(14);"|  Type I / II                           |"
3905 PRINT TAB(14);"|  IEC  0 / I / II                       |"
3910 PRINT TAB(14);"|  Master / Copy                         |"
3920 PRINT TAB(14);"|  Stereo / Mono                         |"
3940 PRINT TAB(14);"|  Datum        ";DATE$;TAB(55);"|"
3950 PRINT TAB(14);"|  Tijd         ";TIME$;TAB(55);"|"
3960 PRINT TAB(14);"|  Eigenaar   : ";VWB$;TAB(55);"|"
3970 PRINT TAB(14);"|  Type cass. : ";TC$;TAB(55);"|"
3980 PRINT TAB(14);"|                                        |"
3990 PRINT TAB(14);"|________________________________________|"
4000 PRINT
4010 PRINT TAB(30);"Druk op de 'M' ..."
4020 LI$=INKEY$
4030 IF LI$="M" OR LI$="m" OR LI$="*" THEN 710
4040 GOTO 4020
4050 ' EIGENAAR/TYPE VAN CASSETTEBANDJE
4060 CLS
4070 LINE (0,17)-(650,17),4
4080 LINE (0,18)-(650,18),15
4090 LINE (0,19)-(650,19),9
4100 LINE (0,130)-(650,130),4
4110 LINE (0,131)-(650,131),15
4120 LINE (0,132)-(650,132),9
4130 PTN$="......................."
4140 PRINT SPACE$(18);"*** Eigenaar en type van cassettebandje ***"
4150 PRINT:PRINT "         Hier kunt u invoeren van wie het bandje is en het type cassette."
4160 LOCATE 5,40:PRINT PTN$:LOCATE 7,40:PRINT PTN$
4170 LOCATE 5,1:INPUT "         Van wie is het bandje       ";VWB$
4180 LOCATE 7,1:INPUT "         Wat voor type bandje is het ";TC$
4190 PRINT
4200 PRINT "         Kloppen de namen die u gekozen heeft (J/N) ?"
4210 NVWB$=INKEY$
4220 IF NVWB$="J" OR NVWB$="j" THEN 710
4230 IF NVWB$="N" OR NVWB$="n" THEN 4170
4240 IF NVWB$="*" THEN GOTO 710
4250 GOTO 4210
4260 ' GEGEVENS WISSEN
4270 CLS
4280 LINE (0,17)-(650,17),4
4290 LINE (0,18)-(650,18),15
4300 LINE (0,19)-(650,19),4
4310 LINE (0,117)-(650,117),4
4320 LINE (0,118)-(650,118),15
4330 LINE (0,119)-(650,119),4
4340 PRINT SPACE$(25);"*** Gegevens wissen ***"
4350 PRINT
4360 PRINT "         Met deze keuze kunt u de hoofdtitels, songtitels,"
4370 PRINT "         type cassette en de eigenaar wissen."
4380 PRINT
4390 BEEP:PRINT "         Wilt u alle gegevens wissen (J/N) ?"
4400 GW$=INKEY$
4410 IF GW$="J" OR GW$="j" THEN 4450
4420 IF GW$="N" OR GW$="n" THEN 710
4430 IF GW$="*" THEN GOTO 710
4440 GOTO 4400
4450 PRINT
4460 PRINT "         Weet u zeker dat u alle gegevens wilt wissen (J/N) ?"
4470 ZGW$=INKEY$
4480 IF ZGW$="J" OR ZGW$="j" THEN RUN
4490 IF ZGW$="N" OR ZGW$="n" THEN 710
4500 IF ZGW$="*" THEN GOTO 710
4510 GOTO 4470
4520 ' Einde Cassette-Printer v 3.1 listing
