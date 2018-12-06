use yelp;

# Restaurants
drop table if exists business_rest; 
create table business_rest as
  select *
  from business 
  where categories like "%restaurant%";

# Restaurant reviews
drop view if exists review_rest;
create view review_rest as
  select *
  from review
  where business_id in 
    (select business_id from business_rest);
