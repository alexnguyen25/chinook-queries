# chinook-queries

An example music database with queries for practicing my SQL skills for CS 3200 Assignment 3.

By Alexander Nguyen

## Answers

You can find the answers in the [Queries folder](./queries).

## Queries

### Query 1 – Create Music Video Table
Create a new table **Music Video** that is a subtype of Track (generalization) with an added `Video Director` attribute. A music video is a track — there cannot be a video without a track, and each track can have either no video or just one.

### Query 2 – Insert Music Videos
Write queries that insert at least 10 videos, respecting the problem rules.

### Query 3 – Insert Using a Subquery
Insert another video for the track **"Voodoo"**, assuming you don't know the `TrackId`. Your insert query should find the `TrackId` automatically.

> **Tip:** For a different database with People and Quotes, here is how to insert a Quote from the name of the Person:
> ```sql
> -- Inserts John in the Person table
> INSERT INTO Persons(name) VALUES("John");
>
> -- Inserts a new Quote for John
> INSERT INTO Quote(person_id, quote)
>     SELECT person_id, "It Worked 🎉"
>     FROM Person
>     WHERE name == "John";
> ```

### Query 4 – Tracks with Accented Characters
Write a query that lists all tracks with an accented character in the name (á, é, í, ó, ú).

### Query 5 – Creative JOIN Query
Which music genres have the most tracks in the database?

### Query 6 – Creative GROUP BY Query
Which albums have the longest total playtime?

---

### Bonus Points
Queries 7–8 are optional. Completing them earns bonus points that can help your other grades.

### Query 7 – Longer-Than-Average Tracks
Write a query that lists all customers who listen to longer-than-average tracks, excluding tracks longer than 15 minutes.

### Query 8 – Tracks Outside Top 5 Genres
Write a query that lists all tracks that are **not** in one of the top 5 genres with the longest duration in the database.