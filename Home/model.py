import pickle

f = open('kmeans.pkl', 'rb')
stored_kmeans = pickle.load(f)
f.close()

print(stored_kmeans.cluster_centers_)
print(stored_kmeans.labels_)
print(stored_kmeans.predict([[1,0,0,0,1,0,0,0,1,0,1]]))
a = stored_kmeans.predict([[1,1,1,1,1,1,1,1,1,0,0]])
print(a[0])
