function Area=myarea(pic)
    img = im2bw(pic);
    
    [x,~] = find(1 - img);
    
   
    Area = sum(ones(length(x),1),1);
