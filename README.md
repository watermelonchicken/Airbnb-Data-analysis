# Project: Singapore Airbnb Price & Rating Analysis
Dataset: Inside Airbnb Singapore dataset
Tools:
- Python (data cleaning)
- MySQL (data querying)
- Microsoft Power BI (dashboard)

Sections:
- Data Cleaning Process
- SQL analysis
- Dashboard 
- Key Findings

Data Cleaning:
The dataset was cleaned using python and pandas. The cleaning process included:
- selecting relevant columns
- removing missing values for price and ratings
- converting price values from strings to numeric format
- Filtering unrealistic price outliers
- re-formatting the id column to fit the digit limit in MySQL

SQL analysis:
- wrote queries for KPIs such as number of listings, average price of Airbnb in Singapore and Average rating of Airbnbs in Singapore
- Price distribution across neighbourhoods
- Average ratings across nieghbourhood
- Create new table which joins the review dataset and the listings dataset for easier analysis
- added a column to categorise the Airbnb listings as budget, standard or luxury
- 
Dashboard:
- Added the key KPI points including number of listings, average price of Airbnb and the average rating of Airbnbs in Singapore
- Charts for relationship between price/reviews against regions in Singapore
- Added a map with all individual listings to find which region of Singapore has more budget Airbnb listings
- Donut chart of the count of the different price categories

Key Findings:
- Central Neighbourhoods tend to have higher listing prices
- Highly rated listings tend to receive more reviews
- Central Region of Singaproe has the highest average prices for Airbnb
- However, the central region has the lowest average review score as well
- Budget Airbnbs are mostly loacated in Coastal areas
- Luxury and standard Airbnbs are mostly located in Central areas


