data = read.csv(file="/home/arcanin3/dmprac/1ese_final/final/kmeans/cluster2.csv",sep=",")
print(data)

kmeans <-function(data,k=4)
{
  centroids= data[sample.int(nrow(data),k), ]
  print(centroids)
  
  cluster=rep(0,nrow(data))
    
  while (TRUE) {
    oldcentroids=centroids
    
    for( i in (1:nrow(data)))
    {
      min_dist=1000
      for(centroid in (1:nrow(centroids)))
      {
        distance_to_centroid=sum((centroids[centroid, ]-data[i, ])^2)
        if(distance_to_centroid<=min_dist)
        {
          cluster[i]=centroid
          min_dist=distance_to_centroid
        }
      }
    }
    
    for(i in 1:nrow(centroids))
    {
      centroids[i, ]=apply(data[cluster==i,],2,mean)
    }
    if(all(centroids==oldcentroids))
    {
      break
    }
  }
  return(list(data=data.frame(data,cluster),centroids=centroids))
}

kmeans(data,k=2)