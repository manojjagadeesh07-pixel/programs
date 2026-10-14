BEGIN { drop=0;pingDrop=-0;cbrDrop=0 }
{
 if ($1 == "d") {
     drop++
     if ($5 == "ping" ) pijngDrop++
     if ($5 == "cbr") cbrDrop++
     }
    
}
END{
printf("total packets dropped due to congestion =%d\n",drop)
printf("ping packet dropped  =%d\n",pingDrop)
printf(" CBR packets dropped =%d\n",cbrDrop)
}     
