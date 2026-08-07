# Full Report: ESG Benchmarking of Amazon, Google & Microsoft (FY2025)

This is the complete analytical report behind the [project README](/README.md) — full methodology, all 16 business questions with documented findings, and detailed limitations. See the README for the condensed executive summary.

## 1. Introduction

Amazon, Microsoft, and Google all publicly commit to net-zero (or stricter) climate targets, and all three report "100% renewable electricity" and rigorous sustainability practices. But these companies operate fundamentally different businesses, measure environmental performance using different accounting boundaries, and disclose data at different levels of completeness. This project asks whether these companies' sustainability claims are actually comparable — and what comparing them properly reveals. This is not a "who is greenest" scorecard; it's an analyst's attempt to benchmark three companies pursuing the same broad destination via different strategies, disclosure philosophies, and definitions of the metrics they report.

## 2. Data Sources

| Company | Source Document | Reporting Period |
|---|---|---|
| Amazon | 2025 Sustainability Report + 2025 Annual Report (10-K) | Calendar Year (Jan 1 – Dec 31, 2025) |
| Microsoft | 2026 Environmental Sustainability Report + Data Fact Sheet + 10-K | Fiscal Year (Jul 1, 2024 – Jun 30, 2025) |
| Google | 2026 Environmental Report (FY2025 data) + Alphabet 2025 Annual Report / SEC filing | Calendar Year (Jan 1 – Dec 31, 2025) |

All figures were extracted from primary-source disclosures, with page/table references logged in the project's Research Log. Where a figure could not be traced to a primary source, it is flagged `confidence = Low` rather than presented as equivalent to directly-disclosed data.

## 3. Methodology

**Comparability framework:** every metric carries `comparable` (Yes/No/Missing), `reason`, and `confidence` (High/Medium/Low/Missing) fields, applied consistently across all 98 rows.

**Restatement tracking:** methodology changes a company made to its own prior-year figures (e.g., Microsoft's new cloud hardware packaging data in FY25 waste figures, Google's retroactive ambition-based emissions boundary) are logged in a separate Restatement Log.

## 4. Business Questions — Full Findings

### Carbon Footprint

**Q1 — Lowest total GHGP-aligned emissions:** Google (18.847 MMT CO₂e) < Microsoft (21.121) << Amazon (80.85). Amazon's footprint is ~4x larger, consistent with logistics/retail operations layered on cloud infrastructure.

**Q2 — Carbon intensity per revenue (GHGP-aligned):** Google (46.8 g/$) < Microsoft (75.0) < Amazon (112.8). Same ranking as Q1 — Amazon is both the largest absolute emitter and least efficient per revenue dollar. Google's own headline "ambition-based" intensity (35.9 g/$) understates its true GHGP-aligned intensity by ~23%.

**Q3 — Scope 1/2/3 composition:** Google and Microsoft both show Scope 3 at ~85%, Scope 1 <1%. Amazon's Scope 1 is 19% (fleet, warehouses, fulfillment), Scope 3 still largest at 76%.

**Q4 — Scope 3 category contribution & consistency:** Purchased Goods & Services (Cat 1) is the top contributor for all three among consistently-defined categories (47–68%). Category definitions are NOT fully consistent — only 5 of ~9–13 disclosed categories align 1:1; Google merges Cat 2+11, Microsoft uniquely discloses Cat 13, Google uniquely discloses Cat 8.

### Energy Transition

**Q5 — Total energy consumption:** Google (44.05M MWh) > Microsoft (37.46M MWh). Amazon excluded — genuine disclosure gap, not a low-usage signal.

**Q6 — Renewable claims comparability:** Not comparable. Amazon/Google use annual matching (100%); Microsoft's headline includes grid-mix (comparable figure 93.3%); Google's hourly-matched CFE metric shows only 65%.

**Q7 — Data center efficiency (PUE):** Google (1.09) < Amazon (1.14) < Microsoft (1.17). All well below industry average (~1.55).

**Q8 — AI/data center demand growth:** Google reported ~37% YoY electricity demand growth; Microsoft attributed a 25% YoY emissions increase to datacenter expansion, consistent with Scope 2 rising from 0.259 to 2.707 MMT year-over-year. Efficiency gains are being outpaced by demand growth.

### Resource Stewardship

**Q9 — Water withdrawal/consumption:** Google (55.6M / 41.1M m³) >> Microsoft (13.27M / 8.17M m³). Amazon excluded — no company-wide volumetric disclosure.

**Q10 — Water replenishment progress:** Amazon 75% (AWS-only), Google 78% (company-wide), Microsoft already achieved water-positive status (milestone, not %).

**Q11 — Water metrics comparability:** Not comparable — differing scope (AWS-only vs. company-wide), metric type (percentage vs. milestone), and denominators. WUE comparable only for Amazon (0.12 L/kWh) and Microsoft (0.27); Google's figure is an unconfirmed third-party estimate.

**Q12 — Waste diversion rate:** Google (88%) and Amazon (84%) closely matched; Microsoft trails at 61.4% (partly reflects new packaging-data reporting scope in FY25).

### Climate Strategy

**Q13 — Progress toward targets:** Single-year snapshot; genuine "on track" assessment needs multi-year data not available. Available signal: Microsoft's Scope 2 rose >10x YoY, a concerning trend against its 2030 target.

**Q14 — Commitment ambition:** Microsoft's carbon-negative-by-2030 (plus historical emissions removal) is the most ambitious; Google's full-value-chain 2030 net-zero is a close second; Amazon's 2040 target is least ambitious and vaguest in scope.

**Q15 — Strategic trade-offs:** Amazon demonstrates the largest operational sustainability footprint but provides less complete disclosure in some environmental categories than its peers. Google's willingness to publish both headline and more stringent internal performance metrics is a genuine differentiator. Microsoft trades near-term trend for long-term ambition.

**Q16 — Transparency scorecard:** Google shows the strongest methodological rigor (voluntarily discloses metrics that make its own numbers look worse). Microsoft discloses the most granular Scope 3 breakdown. Amazon shows the most disclosure gaps.

## 5. Limitations (Detailed)

- **Single-year snapshot.** FY2025 only; trajectory claims rely on narrative YoY disclosures, not structured multi-year data.
- **Scope 3 sub-category alignment.** Only 5 of ~9–13 disclosed categories match across all three companies.
- **Amazon disclosure gaps.** No company-wide energy or water figures — limits some comparisons to two-way (Microsoft vs. Google).
- **Google WUE figure.** The only available number (1.15 L/kWh) is a third-party estimate, not confirmed by Google's own report — flagged `confidence = Low`, excluded from direct comparison in Q11's analysis.
- **Fiscal year misalignment.** Microsoft (Jul–Jun) vs. Amazon/Google (calendar year) — a ~6-month offset treated as "FY2025" throughout.

## 6. Future Improvements

- Extend to 3–5 years of history for genuine trend analysis
- Add a fourth company (e.g., Meta) as reference
- Automate the SQL → Power BI refresh pipeline
- Pursue primary-source confirmation of Google's WUE figure
