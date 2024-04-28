result= cat $1 | sed 's/{/{\n\ \ \ \ /g' | sed 's/}/\ \ \ \ \n}/g' | sed 's/,\ /,\n\ \ \ \ /g' > temp
mv temp $1