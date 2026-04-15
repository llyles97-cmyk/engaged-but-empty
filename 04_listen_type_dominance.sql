-- ============================================================
-- QUERY 04: Closing Argument — Listen Type Dominance
-- ============================================================
-- PURPOSE:
--   Aggregate the listen type classification across the full
--   dataset to determine which type dominates by count and
--   average popularity — and what that distribution reveals
--   about how the platform shapes what gets heard.
--
-- WHAT THIS PROVES:
--   Mixed Profile is the algorithm's sweet spot.
--   It has both the highest track count and the highest
--   average popularity — not because listeners chose it,
--   but because it is the most placeable content on the
--   platform. Sonically ambiguous enough to fit any context,
--   any playlist, any mood recommendation.
--
-- KEY FINDING:
--   Listen Type         | Track Count | Avg Popularity
--   --------------------|-------------|---------------
--   Mixed Profile       |   75,691    |     35.01
--   Intentional Listen  |   21,152    |     30.78
--   Passive Background  |  11,593     |     28.45
--   Algorithm Friendly  |    5,564    |     28.45
--
--   Algorithm Friendly — the type most obviously built
--   for virality — has the LOWEST average popularity,
--   tied with Passive Background. Pure optimization is
--   visible. Audiences feel it and move past it.
--
--   The platform's real preference is not the loudest
--   or most danceable music. It is the most flexible music —
--   content that can be everything to everyone and therefore
--   belongs fully to no one.
--
--   This is Claim 3 in data form:
--   Personalization that redirects doesn't push what you love.
--   It pushes what works everywhere.
--
-- TECHNIQUE: GROUP BY with CASE WHEN subquery,
--            HAVING to filter statistically significant groups,
--            ORDER BY avg_popularity to rank the output
-- ============================================================

SELECT
    CASE
        WHEN energy >= 0.75 AND danceability >= 0.75
            THEN 'Algorithm Friendly'
        WHEN acousticness >= 0.60 AND energy < 0.50
            THEN 'Intentional Listen'
        WHEN instrumentalness >= 0.50
            THEN 'Passive Background'
        ELSE
            'Mixed Profile'
    END AS listen_type,
    COUNT(*)                     AS track_count,
    ROUND(AVG(popularity), 2)    AS avg_popularity
FROM spotify_tracks
GROUP BY listen_type
HAVING COUNT(*) > 50
ORDER BY avg_popularity DESC;
