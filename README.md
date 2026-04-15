# Engaged but Empty: Why Attention Metrics Are Failing the Industry

**A strategic audit of how media, streaming, and brand platforms measure audience behavior — and what they should be tracking instead.**

---

## Project Overview

The music and media industry has spent a decade optimizing for engagement. Streams. Likes. Views. Follower counts. These metrics are everywhere — on dashboards, in pitch decks, in executive reports.

But engagement is not loyalty. And this project makes that case with data.

*Engaged but Empty* is a portfolio research project that combines original SQL analysis, third-party industry data, and strategic frameworks to argue that the metrics the industry trusts most are measuring the wrong thing. Platforms optimize for activity. Algorithms reward flexibility over identity. And audiences — though more "engaged" than ever — are less loyal, less converted, and less invested than the numbers suggest.

This is not an anti-streaming argument. It is a precision argument: that the gap between what platforms measure and what actually builds audience relationships is wider than the industry acknowledges, and that closing that gap requires a different set of questions.

---

## The Thesis

> *Engagement metrics were designed to measure activity, not investment. The industry optimized for the signal and lost the behavior it was supposed to represent.*

Three claims structure this argument:

**Claim 1 — Streaming: Volume Without Depth**
High stream counts measure discovery, not devotion. A track's ability to convert a viral TikTok moment into a Spotify stream has fallen 63% since 2020. Tracks with low skip rates last nearly three times longer in key playlists than high-volume tracks with high skip rates. Volume and depth are not the same metric.

**Claim 2 — Platform: Engagement Without Conversion**
TikTok's average engagement rate is nearly 5%. Its average conversion rate is 0.46%. Of the consumers who follow an artist on TikTok after discovery, only 26% go on to listen to more of that artist's music — compared to 45% on other platforms. Engagement has become a reflex. It stopped being a signal of intent.

**Claim 3 — Consumer: Activity Without Loyalty**
Personalization works when it reflects identity. It breaks when it only reflects behavior. Original SQL analysis of 114,000+ Spotify tracks reveals that the most popular music is not the most emotionally specific or the most sonically bold — it is the most flexible. Optimized not for any one listener, but for the algorithm's need to place it anywhere.

---

## Repository Structure

```
engaged-but-empty/
│
├── README.md                  ← You are here
│
├── /sql
│   ├── 01_baseline_query.sql          ← Top popularity tracks and sonic profile
│   ├── 02_popularity_tiers.sql        ← Avg sonic attributes across high/mid/low popularity
│   ├── 03_classification_case_when.sql ← CASE WHEN listen type classification
│   └── 04_listen_type_dominance.sql   ← GROUP BY + HAVING closing argument query
│
├── /data
│   └── dataset_citation.md            ← Spotify Tracks Dataset source and methodology notes
│
├── /findings
│   ├── claim_1_streaming.md           ← Key stats and observations for Claim 1
│   ├── claim_2_platform.md            ← Key stats and observations for Claim 2
│   └── claim_3_consumer.md            ← SQL findings and interpretation for Claim 3
│
└── /deck
    └── engaged_but_empty_deck.pdf     ← Final presentation (coming soon)
```

---

## Data Sources

**Original Analysis**
- Dataset: [Spotify Tracks Dataset](https://www.kaggle.com/datasets/maharshipandya/spotify-tracks-dataset) via Kaggle
- Tool: DB Browser for SQLite
- Scope: 114,000+ tracks across multiple genres, with audio features including energy, danceability, valence, acousticness, instrumentalness, and popularity scores

**Third-Party Research**
- MIDiA Research — *Why Virality Is Not Building Fandom* (September 2025)
- Chartmetric / HMC — *Why TikTok Songs Go Viral Faster* (November 2025)
- WebFX — *TikTok Marketing Benchmarks* (2026)
- Lebesgue / Enrich Labs — *TikTok Ads Benchmarks* (2024–2025)
- Luminate — *2023 Year-End Music Report*

---

## Key Findings

**From original SQL analysis (Spotify Tracks Dataset):**

- High popularity tracks are **41% less acoustic** than low popularity tracks — acoustic music, which skews intentional and emotionally specific, is systematically filtered out at the top of the chart
- The most dominant listen type at high popularity is **Mixed Profile** — tracks that are sonically flexible enough to fit multiple contexts, not tracks optimized for any one listener
- Algorithm Friendly tracks (high energy + high danceability) have the **lowest average popularity** in the dataset, tied with Passive Background — pure optimization is visible, and audiences skip it

**From third-party research:**

- TikTok's ability to convert viral moments into Spotify streams has **fallen 63%** since 2020 (738 streams per TikTok post in 2020 → 275 in 2025)
- Tracks with low skip rates remain in key playlists for **22 weeks on average** vs 8 weeks for high-skip tracks — retention is the metric that actually predicts longevity
- TikTok average engagement rate: **~4.9%** — TikTok average conversion rate: **0.46%** — the gap between reaction and action is the argument

---

## The Framework

Three metrics the industry should prioritize over raw engagement:

1. **Retention Rate** — What percentage of listeners return to this artist or track after first exposure?
2. **Conversion Depth** — Of those who engage, how many take a downstream action (save, follow, purchase, share)?
3. **Identity Signal** — Does this content reflect the listener's specific taste, or is it flexible enough to belong to everyone and no one?

Personalization that delivers serves the person. Personalization that redirects serves the platform. The industry's current metrics cannot tell the difference.

---

## About This Project

This project was built as part of a data analytics portfolio targeting roles in music, media, and audience intelligence. It combines SQL querying, industry research synthesis, and strategic framework development to demonstrate applied analytical thinking — not just technical skill.

**Positioning:** *I translate audience behavior into strategy — across platforms, culture, and business.*

---

*Built by Lyles Mom | [Portfolio](https://lylesmomportfolio.my.canva.site) | April 2026*
