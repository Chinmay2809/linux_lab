print("Name: Abhijeet singhal")
print("SAPID : 590016352")

import pandas as pd
from sklearn.datasets import load_iris
from sklearn.preprocessing import StandardScaler, OneHotEncoder

iris=load_iris()

df=pd.DataFrame(data=iris.data,columns=iris.feature_names)
df['species']=iris.target

df['species']=df['species'].map({0:'setosa',1:'versicolor',2:'virginica'})

print("original iris dataset:\n",df.head(10))

encoder=OneHotEncoder(sparse_output=False)
encoded_species=encoder.fit_transform(df[['species']])

encoded_df=pd.DataFrame(encoded_species,columns=encoder.get_feature_names_out(['species']))

df_encoded=pd.concat([df.drop('species',axis=1),encoded_df],axis=1)

print("\nafter one-hot encoding:\n",df_encoded.head(10))
scaler=StandardScaler()

feature_columns=iris.feature_names
df_encoded[feature_columns]=scaler.fit_transform(df_encoded[feature_columns])

print("\nafter feature scaling:\n", df_encoded.head(10))
