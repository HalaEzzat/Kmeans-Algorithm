function cluster=ecl_dist(data,centroid,k)
distvec=zeros(k,2);
for i=1:k
dist=sqrt(sum((data-centroid(i,1:2)).^2));
distvec(i,1)=dist;
distvec(i,2)=centroid(i,3);
end
mindist=min(distvec(:,1));
[row,~] = find(distvec(:,1)==mindist);
cluster=distvec(row,2);
