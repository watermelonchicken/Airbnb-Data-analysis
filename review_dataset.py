import pandas as pd

df = pd.read_csv('review_dataset.csv')
columns_to_keep = [
    'id',
    'number_of_reviews',
    'review_scores_rating'
]

df_copy = df[columns_to_keep]
df_copy = df_copy.dropna(subset=['review_scores_rating'])
df_copy["id"] = df_copy["id"].astype(str).str[:9]
df_copy.to_csv('review_dataset.csv', index = False)

#what to do:
# remove all the 0 review rows
# clean the listing data set
# load onto sql
#do the needed subqueries as well