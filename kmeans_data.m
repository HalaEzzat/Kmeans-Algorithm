function DataSet=kmeans_data(~)
DataSet = zeros(10,2);%prepare matrix to populate it with data
for r=1:10%first five rows for first pattern data -number five-
     pic=imread(input('enter image name or destination: ','s'));
     f1=myarea(pic);
     f2=eularno(pic);
     v=[f1,f2];  
     siz=length(v);
     DataSet(r,1:siz)=v;
end
