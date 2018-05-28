state("IWBTOP")
{
	int score : "IWBTOP.exe", 0x00617EF0;
}

start
{
	return current.score == 1;
}

split
{
	return (old.score != 1 && current.score == 1) ||			//Tutorial
			(old.score != 2 && current.score == 2) ||		//Stage1
			(old.score != 3 && current.score == 3) ||		//Boss1
			(old.score != 4 && current.score == 4) ||		//Stage2
			(old.score != 5 && current.score == 5) ||		//Boss2
			(old.score != 6 && current.score == 6) ||		//Stage3
			(old.score != 7 && current.score == 7) ||		//Boss3
			(old.score != 8 && current.score == 8) ||		//Trial1
			(old.score != 9 && current.score == 9) ||		//Trial2
			(old.score != 10 && current.score == 10) ||		//Trial3
			(old.score != 11 && current.score == 11) ||		//Trial4
			(old.score != 12 && current.score == 12) ||		//Trial5
			(old.score != 13 && current.score == 13) ||		//Boss4
			(old.score != 14 && current.score == 14) ||		//Stage5
			(old.score != 15 && current.score == 15) ||		//Boss5
			(old.score != 16 && current.score == 16) ||		//Stage6
			(old.score != 17 && current.score == 17) ||		//Minions
			(old.score != 18 && current.score == 18) ||		//Boss6
			(old.score != 19 && current.score == 19) ||		//Tower
			(old.score != 20 && current.score == 20) ||		//Halls
			(old.score != 21 && current.score == 21) ||		//Boss7
			(old.score != 22 && current.score == 22) ||		//Stage8, Replace with 100 for badend
			(old.score != 23 && current.score == 23) ||		//Boss8
			(old.score != 24 && current.score == 24) ||		//Stage9
			(old.score != 25 && current.score == 25) ||		//Boss9
			(old.score != 26 && current.score == 26) ||		//Stage10
			(old.score != 27 && current.score == 27) ||		//Boss10
			(old.score != 28 && current.score == 28) ||		//Seal1
			(old.score != 29 && current.score == 29) ||		//Seal2
			(old.score != 30 && current.score == 30) ||		//Seal3
			(old.score != 31 && current.score == 31) ||		//Seal4
			(old.score != 32 && current.score == 32) ||		//BackToKrak
			(old.score != 33 && current.score == 33) ||		//Kraken
			(old.score != 34 && current.score == 34) ||		//Gears
			(old.score != 35 && current.score == 35) ||		//Dynamite
			(old.score != 36 && current.score == 36) ||		//Crystals
			(old.score != 37 && current.score == 37) ||		//Portal
			(old.score != 38 && current.score == 38)		//End
			;
}

reset
{
	return current.score == 42040249;
}

isLoading
{
	return false;
}