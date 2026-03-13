import pandas as pd

df = pd.read_csv('listings_raw.csv', encoding="latin1", dtype={"id": str, "host_id": str})

columns_to_keep = [
    'id',
    'host_id',
    'neighbourhood_group_cleansed',
    'neighbourhood_cleansed',
    'latitude',
    'longitude',
    'price',
    'number_of_reviews'
]

df_copy= df[columns_to_keep]
df_copy = df_copy.dropna(subset = 'price')
df_copy = df_copy[df_copy['number_of_reviews']>0]
df_copy["price"] = df_copy["price"].str.replace("$", "", regex=False)
df_copy[["longitude","latitude"]] = df_copy[["longitude","latitude"]].round(5)
df_copy["id"] = df_copy["id"].astype(str).str[:9]
df_copy["host_id"] = df_copy["host_id"].astype(str).str[:9]




df_copy.to_csv('listings_cleaned.csv', index=False)
