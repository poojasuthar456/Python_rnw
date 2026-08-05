Mall Shopper Segmentation Report
Business Problem

The objective of this project was to segment mall customers into meaningful groups based on their demographic and spending behaviour. Effective customer segmentation helps shopping malls improve marketing campaigns, personalize customer experiences, optimize store layouts, and increase overall revenue.

Dataset

The Mall Customer Segmentation dataset contains 200 customer records with demographic and behavioural information including Gender, Age, Annual Income, and Spending Score.

Features Used

Two clustering experiments were conducted:

2D: Annual Income and Spending Score
4D: Age, Annual Income, Spending Score, and Gender

The 2D feature set achieved a higher Silhouette Score (0.555) than the 4D feature set (0.314), indicating that Annual Income and Spending Score provide clearer customer separation.

Algorithm Comparison

Three clustering algorithms were evaluated.

K-Means: Silhouette Score = 0.555
Agglomerative: Silhouette Score = 0.554
DBSCAN: Silhouette Score = 0.597

DBSCAN achieved the best internal metrics but classified 25.5% of customers as noise. K-Means produced five well-defined customer segments while assigning every customer to a cluster, making it more suitable for practical retail deployment.

Customer Segments
Big Spenders: High-income customers with high spending behaviour.
Young Aspirers: Young customers with lower income but high spending.
Average Shoppers: Customers with moderate income and average spending.
Budget Shoppers: Price-sensitive customers with lower income and lower spending.
Careful Spenders: High-income customers who spend conservatively.
Future Improvements

Customer segmentation could be enhanced by incorporating additional behavioural data such as purchase history, shopping frequency, product categories, loyalty membership activity, visit duration, seasonal shopping behaviour, and mobile application interactions. These features would enable more accurate customer profiling and support real-time personalized recommendations within mall applications.