#!/bin/bash

echo -e "\nWhich stat would you like to see?\n1. Single season passing yards\n2. Single season rushing yards\n3. Single season receiving yards\nEnter number: "
read statnum

echo -e "\nWhich rank would you like to see?\nEnter rank: "
read rank

if [ $statnum == 1 ]; then
	echo -e "\nThe number $rank best player in single season passing yards is: "
	wget -qO- "https://www.pro-football-reference.com/leaders/pass_yds_single_season.htm" | grep "data-stat=\"rank\" >$rank<" | sed -e 's/<[^>]*>//g' | grep -o "[A-Z][a-z]*\ [A-Z][a-z]*"
elif [ $statnum == 2 ] ; then
	echo -e "\nThe number $rank best player in single season rushing yards is: "
	wget -qO- "https://www.pro-football-reference.com/leaders/rush_yds_single_season.htm" | grep "data-stat=\"rank\" >$rank<" | sed -e 's/<[^>]*>//g' | grep -o "[A-Z][a-z]*\ [A-Z][a-z]*"
elif [ $statnum == 3 ] ; then
	echo -e "\nThe number $rank best player in single season receiving yards is: "
	wget -qO- "https://www.pro-football-reference.com/leaders/rec_yds_single_season.htm" | grep "data-stat=\"rank\" >$rank<" | sed -e 's/<[^>]*>//g' | grep -o "[A-Z][a-z]*\ [A-Z][a-z]*"
fi
