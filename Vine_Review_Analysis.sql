--The data is filtered to create a DataFrame or table where there are 20 or more total votes 
create table moreThan20_total_votes as
select * from vine_table
where total_votes >= 20
;

--The data is filtered to create a DataFrame or table where the percentage of helpful_votes is equal to or greater than 50% 
create table greaterThan50_votes_percentage as
select * from moreThan20_total_votes
where CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
;

--The data is filtered to create a DataFrame or table where there is a Vine review
create table  paid_Vine_program as
select * from greaterThan50_votes_percentage
where vine = 'Y'
;

--The data is filtered to create a DataFrame or table where there isn’t a Vine review
create table unpaid_vine_program as
select * from greaterThan50_votes_percentage
where vine = 'N'
;

--The total number of reviews, the number of 5-star reviews, and the percentage 5-star reviews are calculated for all Vine and non-Vine reviews
create table Vine_Review_Analysis as
select
(
	select count(review_id)
	from greaterThan50_votes_percentage
) as total_review,
(
	select count(star_rating) 
	from greaterThan50_votes_percentage
	where star_rating = 5
) as total_five_star_review,
(
	select count(star_rating)
	from paid_Vine_program 
	where star_rating = 5
) as paid_5star_review,
(
	select
		round((count(star_rating)*100)/ 
			cast(
					(
						select count(star_rating) 
						from paid_vine_program
					)as numeric
			 	),2) 
			
	from paid_Vine_program 
	where star_rating = 5
) as paid_5star_percentage,
(
	select count(star_rating) 
	from unpaid_Vine_program 
	where star_rating = 5
) as unpaid_5star_review,
(
	select
		round((count(star_rating)*100)/ 
			cast(
					(
						select count(star_rating) 
						from unpaid_vine_program
					)as numeric
			 	),2) 
			
	from unpaid_Vine_program 
	where star_rating = 5
) as unpaid_5star_percentage
;
