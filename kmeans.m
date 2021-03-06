function clustered=kmeans(data,k,siz)
dataset=data;
[r,c]=size(data);
begin=data(1:k,:);
while(1)
templeng=zeros(r,k); 
num=zeros(1,k);
tempdata1=zeros(k,c);

    for j=1:1:r
        for temp=1:1:k
        templeng(j,temp)=sqrt(sum(((data(j,:))-(begin(temp,:))).^2)); 
        end  
    end
    
    for j=1:1:r
       for temp=1:1:k
           if templeng(j,temp)==min(templeng(j,:))
               data(j,c+1)=temp;              
           end
       end       
    end
    
   for i=1:1:k
    for j=1:1:r
      if data(j,c+1)==i
        num(1,i)=num(1,i)+1;
       for t=1:1:c
         tempdata1(i,t)= tempdata1(i,t)+data(j,t);
       end
      end 
    end    
    for t=1:1:c
    tempdata1(i,t)=tempdata1(i,t)/num(1,i);
    end
   end
 if begin~=tempdata1
 data=data(1:r,1:c); 
 begin=tempdata1 ;
 continue
 end
 break
 
end 
 
      [row,~]=size(tempdata1);
      clusters=zeros(row,3);
      for i=1:row
          clusters(i,1:2)=tempdata1(i,:);
          clusters(i,3)=i;
      end
target=zeros(siz,1);
for i=1:siz
    target(i,1)=ecl_dist(dataset(i,1:2),clusters,k);
end
data1=zeros(10,3);
data1(:,1:2)=dataset(:,:);
data1(:,3)=target;
clustered=data1;
            
    
     
        
    
