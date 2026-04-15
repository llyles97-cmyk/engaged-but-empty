-- ============================================================
-- QUERY 01: Baseline — Top Popularity Tracks & Sonic Profile
-- ============================================================
-- PURPOSE:
--   Establish what "high popularity" actually looks like sonically.
--   Before making any claims about algorithmic behavior, we need
--   to understand the raw profile of the tracks at the top of the
--   popularity tier.
--
-- WHAT THIS PROVES:
--   High popularity tracks share a narrow sonic fingerprint —
--   high energy, high danceability, mid-to-high valence.
--   This is the baseline the rest of the analysis builds from.
--
-- DATASET:
--   Spotify Tracks Dataset (Kaggle)
--   kaggle.com/datasets/maharshipandya/spotify-tracks-dataset
--   114,000+ tracks across multiple genres
--
-- KEY COLUMNS USED:
--   track_name    — song title
--   artists       — artist name(s)
--   popularity    — Spotify popularity score (0–100)
--   energy        — intensity and activity level (0.0–1.0)
--   danceability  — rhythmic suitability for dancing (0.0–1.0)
--   valence       — musical positivity (0.0–1.0)
-- ============================================================

SELECT
    track_name,
    artists,
    popularity,
    energy,
    danceability,
    valence
FROM spotify_tracks
WHERE popularity >= 80
ORDER BY popularity DESC
LIMIT 20;
