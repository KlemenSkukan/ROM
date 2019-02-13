%funkcija stevilo_sedel2  izra�una �tevilo sedel v matriki A,
%pri �emer je v polnosti napisana z uporabo vektorskih operacij 

function cnt = stevilo_sedel2(M)
  cnt = sum(sum(min(M, [], 2) == M & M == max(M, [], 1))) ...  
         + sum(sum(max(M, [], 2) == M & M == min(M, [], 1)));
endfunction