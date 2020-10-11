UPDATE movie_table
SET category =
CASE
WHEN drama = 'Д ' THEN 'драма'
WHEN comedy = 'Д ' THEN "комедия'
WHEN action = Д ' THEN 'боевик'
WHEN gore = Д ' THEN 'ужасы'
WHEN scifi = Д ' THEN 'фантастика'
WHEN for_kids = Д ' THEN ‘семейное'
WHEN cartoon = Д ' AND rating = '<5' THEN семейное'
ELSE 'mise'
END;
