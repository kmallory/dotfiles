#!/bin/csh -f 
foreach i (*thumbnail.jpg) 
set n=`echo $i|sed -e 's/nail//'`
mv $i $n
echo $i renamed to  $n 
end
