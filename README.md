# Amazon_Vine_Analysis

## Overview of the analysis
In this project, we have access to approximately 50 datasets. Each one contains reviews of a specific product, from clothing apparel to wireless products. From these dataset, we pick the amazon_reviews_us_Video_Games dataset as the object product to analyzing Amazon reviews written by members of the paid Amazon Vine program. It's a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review. We'll use PySpark, Pandas, or SQL to determine if there is any bias toward favorable reviews from Vine members in your dataset. Then, write a summary of the analysis for Jennifer to submit to the SellBy stakeholders.

## Results
* How many Vine reviews and non-Vine reviews were there?

![paid_vine_reviews](https://github.com/hayden0098/Amazon_Vine_Analysis/blob/main/screenshot/paid_vine_reviews.jpg) ![unnpaid_vine_reviews](https://github.com/hayden0098/Amazon_Vine_Analysis/blob/main/screenshot/unpaid_vine_reviews.jpg)

There are 94 reviews as Vine reviews, and 40471 as non-Vine reviews that the helpful_votes percentage is equal or greater than 50%. 
* How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?

![paid_5star_reviews](https://github.com/hayden0098/Amazon_Vine_Analysis/blob/main/screenshot/paid_5star_reviews.jpg) ![unpaid_5star_reviews](https://github.com/hayden0098/Amazon_Vine_Analysis/blob/main/screenshot/unpaid_5star_reviews.jpg)

There are 48 reviews as Vine reviews, and 15663 as non-Vine reviews that were 5 stars and has helpful_votes percentage is equal or greater than 50%.
* What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?

![Vine_Review_Analysis_df](https://github.com/hayden0098/Amazon_Vine_Analysis/blob/main/screenshot/vince_review_analysis.jpg)

From the data which their helpful_votes percentage is equal or greater than 50% and also the reviews were 5 stars, Vine reviews has the 51.06% of data is 5 stars and non-Vine reviews has the 38.7% of data is 5 star.

## Summary
In the Amazon reviews dataset, there are a total of 40565 reviews, 15711 reviews out of 40565 have a 5 star rating with more than 50% being helpful votes.  Out of 94 paid vine reviews there are 48 reviews that have a 5 star rating which is 51.06% of the total paid vine reviews. On the other hands, Out of 40471 unpaid non-vine reviews there are 15663 reviews that have a 5 star rating which is 38.7% of the total unpaid non-vine reviews. In  summary, there might have some bias where we look at the data which have over 50% of helpful votes, we should adjust the helful percent rate to over 70% in order to lower the bias from the dataset. Also the positivity bias would appear since the vine sample size was was less than 100 entries. Although 94 entires is still a decent number to sample with, it could lead a less signifcant result. I would make futher analysis about to see how many review in vine and non-vine with verified purchased to the product by filtering verified_purchase column.
