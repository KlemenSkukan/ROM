# Funcija preštejo koliko sedlov ima.
function cnt = stevilo_sedel(M)
   [m, n] = size(M);
   stevec = 0;
   for i = 1:1:m
       for j = 1:1:n
           if ali_je_sedlo(M, i, j)
                stevec = stevec + 1;
           end
       end 
   end 
   cnt = stevec;
endfunction