CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT a.name, b.size FROM dogs AS a, sizes AS b WHERE a.height > b.min AND a.height <= b.max;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT a.child FROM parents AS a, dogs AS b WHERE a.parent = b.name ORDER BY b.height DESC;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  SELECT a.parent, a.child, b.size FROM parents AS a, size_of_dogs AS b WHERE a.child = b.name  ;

-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  SELECT a.child || ' and ' || b.child || ' are ' || a.size || ' siblings' FROM siblings AS a, siblings AS b WHERE a.parent = b.parent AND a.child < b.child AND a.size = b.size;


-- Ways to stack 4 dogs to a height of at least 170, ordered by total height
CREATE TABLE stacks_helper(dogs, stack_height, last_height, n);
INSERT INTO  stacks_helper (dogs, stack_height, last_height, n)
SELECT name, height, height, 1 FROM dogs;

INSERT INTO  stacks_helper (dogs, stack_height, last_height, n)
SELECT a.name || ', ' || b.name || ', ' || c.name || ', ' || d.name, a.height + b.height + c.height + d.height, d.height,


CREATE TABLE stacks AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";
