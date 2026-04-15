-- ============================================================
-- QUERY 03: Classification — Listen Type via CASE WHEN
-- ============================================================
-- PURPOSE:
--   Build a custom classification framework directly in SQL
--   to categorize high-popularity tracks by how they are
--   likely being consumed — and by whom they are being served.
--
-- WHAT THIS PROVES:
--   Not all popular music is popular for the same reason.
--   By classifying tracks into four listen types based on
--   their audio features, we can see which type the algorithm
--   favors at the top of the popularity tier — and which types
--   it quietly deprioritizes.
--
-- LISTEN TYPE DEFINITIONS:
--   Algorithm Friendly  → energy >= 0.75 AND danceability >= 0.75
--                         High-energy, high-danceability tracks
--                         optimized to keep sessions active
--
--   Intentional Listen  → acousticness >= 0.60 AND energy < 0.50
--                         Quieter, acoustic-leaning tracks that
--                         require a listener to choose them
--
--   Passive Background  → instrumentalness >= 0.50
--                         Primarily instrumental tracks suited
--                         to ambient or background listening
--
--   Mixed Profile       → everything else
--                         Sonically flexible tracks that can
--                         slot into multiple contexts — the
--                         algorithm's preferred profile
--
-- KEY OBSERVATION:
--   Mixed Profile dominates the high-popularity tier.
--   The platform does not reward one sound. It rewards
--   versatility — music that belongs to no one specifically
--   and can be placed anywhere.
--
-- TECHNIQUE: CASE WHEN classification within SELECT
-- ============================================================

SELECT
    track_name,
    artists,
    popularity,
    CASE
        WHEN energy >= 0.75 AND danceability >= 0.75
            THEN 'Algorithm Friendly'
        WHEN acousticness >= 0.60 AND energy < 0.50
            THEN 'Intentional Listen'
        WHEN instrumentalness >= 0.50
            THEN 'Passive Background'
        ELSE
            'Mixed Profile'
    END AS listen_type
FROM spotify_tracks
WHERE popularity >= 70
ORDER BY popularity DESC;
