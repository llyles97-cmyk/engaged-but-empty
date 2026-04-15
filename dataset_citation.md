# Dataset Citation & Methodology Notes

## Primary Dataset

**Spotify Tracks Dataset**
- Source: Kaggle
- URL: https://www.kaggle.com/datasets/maharshipandya/spotify-tracks-dataset
- Contributor: Maharshi Pandya
- Records: ~114,000 tracks across multiple genres
- Tool used: DB Browser for SQLite

### Key Columns Used in Analysis

| Column | Description | Range |
|---|---|---|
| `track_name` | Song title | — |
| `artists` | Artist name(s) | — |
| `popularity` | Spotify popularity score | 0–100 |
| `energy` | Intensity and activity level | 0.0–1.0 |
| `danceability` | Rhythmic suitability for dancing | 0.0–1.0 |
| `valence` | Musical positivity / mood | 0.0–1.0 |
| `acousticness` | Likelihood track is acoustic | 0.0–1.0 |
| `instrumentalness` | Likelihood track has no vocals | 0.0–1.0 |
| `duration_ms` | Track duration in milliseconds | — |

---

## Methodology Notes

### Popularity Tier Definitions
Tiers were defined as follows for Query 02:
- **High Popularity:** score >= 80
- **Mid Popularity:** score BETWEEN 40 AND 60
- **Low Popularity:** score < 40

These thresholds were chosen to create meaningful separation between
mainstream chart presence, average catalog performance, and low-discovery
tracks. They are not Spotify's official tier definitions.

### Listen Type Classification (Queries 03 & 04)
The four listen types were defined based on audio feature thresholds
selected to reflect behavioral listening contexts, not genre labels:

| Listen Type | Logic | Rationale |
|---|---|---|
| Algorithm Friendly | energy >= 0.75 AND danceability >= 0.75 | High-energy, high-danceability tracks optimized to sustain platform sessions |
| Intentional Listen | acousticness >= 0.60 AND energy < 0.50 | Quieter, acoustic-leaning tracks that require active listener choice |
| Passive Background | instrumentalness >= 0.50 | Primarily instrumental content suited to ambient or background use |
| Mixed Profile | All other combinations | Sonically flexible tracks that fit multiple contexts |

### Limitations
- Popularity scores in this dataset reflect a snapshot in time and may
  not represent current Spotify scores, which update in real time
- Duplicate tracks appear in the dataset (same song across multiple
  albums or versions) and were not deduplicated for these queries —
  this inflates counts for high-profile tracks but does not materially
  affect the aggregated tier comparisons
- Audio feature thresholds for listen type classification are
  analytical constructs, not Spotify's internal categories
- Dataset covers tracks available on Spotify at time of collection
  and may not represent the full global catalog

---

## Third-Party Sources Referenced in Analysis

| Source | Finding Used | Date |
|---|---|---|
| MIDiA Research | TikTok follower-to-listener conversion rate (26% vs 45%) | September 2025 |
| Chartmetric / HMC | TikTok-to-Spotify stream conversion drop (738 → 275 per post) | November 2025 |
| WebFX | TikTok avg engagement rate 3.85–4.90% vs 0.84% CTR | 2026 |
| Lebesgue / Enrich Labs | TikTok avg conversion rate 0.46% | 2024–2025 |
| MIDiA Research via That Eric Alper | Skip rate vs playlist longevity (22 weeks vs 8 weeks) | August 2025 |
| Luminate | 2023 Year-End Music Report — streaming volume and superfan data | January 2024 |
