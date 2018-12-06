use yelp;

## Photo
ALTER TABLE photo modify photo_id VARCHAR(22);
ALTER TABLE photo ADD PRIMARY KEY (photo_id);
CREATE INDEX phodo_idx ON photo (photo_id);

## Tip
# no primary key

## Business
ALTER TABLE business modify business_id VARCHAR(22);
ALTER TABLE business ADD PRIMARY KEY (business_id);
CREATE INDEX business_idx ON business (business_id);

## Review
ALTER TABLE review modify review_id VARCHAR(22);
ALTER TABLE review modify user_id VARCHAR(22);
CREATE INDEX review_idx ON review (review_id);
ALTER TABLE review ADD PRIMARY KEY (review_id);

## User
ALTER TABLE user modify user_id VARCHAR(22);
ALTER TABLE user ADD PRIMARY KEY (user_id);
