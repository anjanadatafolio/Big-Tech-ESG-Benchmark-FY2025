# How Amazon, Google & Microsoft Measure Sustainability Differently
### An ESG Benchmarking Project (FY2025)

Amazon, Microsoft, and Google all report ambitious climate targets and claim significant progress toward sustainable operations. Yet many of the metrics used to evaluate that progress — carbon intensity, renewable energy, water stewardship, Scope 3 emissions — are measured using different methodologies and reporting boundaries.

**This project asks a simple question: are these sustainability claims actually comparable, and if not, what does comparing them properly reveal?**

Using FY2025 sustainability disclosures, a normalized SQL dataset, and a 6-page Power BI dashboard, this project benchmarks the environmental performance of the three largest hyperscale cloud providers — while explicitly documenting where comparisons are valid and where they aren't.

**[Full Findings & Q&A Detail](/Documentation/Full_Report.md) · [SQL Queries](/SQL) · [Dashboard File](/Power%20BI)**

---

## Business Problem

ESG dashboards frequently compare companies on headline metrics without accounting for differences in reporting boundary, fiscal year, or methodology. A "100% renewable" claim from one company can mean something structurally different from another company's identical claim. This project builds a benchmarking approach that surfaces these differences explicitly, rather than smoothing over them for the sake of a clean chart.

## Project Snapshot

| Metric | Value |
|---|---|
| Companies analyzed | 3 (Amazon, Microsoft, Google) |
| Primary sustainability reports reviewed | 3 |
| Data points collected | 98 |
| Business questions answered | 16 |
| SQL queries written | 16 |
| Dashboard pages | 6 |
| Reporting period | FY2025 |

## Dashboard Preview

*(Insert Executive Summary and Carbon Footprint page screenshots here)*

The dashboard spans six pages: Executive Summary, Carbon Footprint, Energy Transition, Resource Stewardship, Climate Strategy, and Cross-Industry Insights. Full page-by-page screenshots are in [`/Power BI/Dashboard Screenshots`](/Power%20BI/Dashboard%20Screenshots).

## Key Findings

- **Amazon emitted ~4x more** than Google and Microsoft (80.85 vs. 18.85 / 21.12 MMT CO₂e), reflecting its combined logistics and cloud operations — and has the highest carbon intensity per revenue dollar (112.8 g/$) of the three.
- **Google had the lowest carbon intensity and best data center efficiency (PUE 1.09)** — but efficiency gains across the industry are being outpaced by AI-driven demand growth, not offsetting it (Google: ~37% YoY electricity demand growth; Microsoft: 25% YoY emissions increase from datacenter expansion).
- **"100% renewable electricity" is not one methodology.** Amazon and Google use annual matching; Microsoft's headline includes grid-mix (comparable figure: 93.3%); Google's own stricter hourly-matched metric shows only 65% real-time coverage.
- **Microsoft set the most ambitious climate target** (carbon-negative by 2030) — while carrying the steepest near-term emissions trend (Scope 2 up >10x year-over-year).
- **No single company leads on all three dimensions** — operational scale, reporting rigor, and target ambition. Each made a distinct trade-off.

Full findings for all 16 business questions, organized by theme, are documented in [`/Documentation/Full_Report.md`](/Documentation/Full_Report.md).

## Methodology

**Scope:** Environmental metrics only (Carbon, Energy, Renewables, Water, Waste, Net Zero targets) — governance and social metrics were excluded to keep the comparison focused.

**Workflow:**
1. Primary sustainability report review → page-referenced Research Log
2. Data extraction & normalization → Master Dataset, Comparability Log, Restatement Log
3. SQLite database (98 rows, typed columns, true NULLs for undisclosed metrics)
4. 16 SQL business questions, each with a documented Finding
5. 6-page Power BI dashboard
6. Analyst findings & recommendations

**Comparability framework:** every metric carries a `comparable` flag (Yes/No/Missing), a `reason`, and a `confidence` rating (High/Medium/Low). This framework — not the dashboard — is the real backbone of the project: it's what let questions like "are these renewable claims comparable?" get answered with evidence instead of assumption.

## Business Questions

| Theme | Questions |
|---|---|
| Carbon Footprint | Q1–Q4 |
| Energy Transition | Q5–Q8 |
| Resource Stewardship | Q9–Q12 |
| Climate Strategy | Q13–Q16 |

Not every question is answerable by SQL alone — several (Q4, Q6, Q8, Q10, Q11) are hybrid (a query-derived chart plus labeled narrative context), and Q14–Q16 are qualitative synthesis, documented as such rather than forced into a query that doesn't exist. Full queries and findings: [`/SQL`](/SQL) and [`/Documentation/Full_Report.md`](/Documentation/Full_Report.md).

## Business Recommendations

**Amazon**
- Close the company-wide energy and water disclosure gap
- Expand Scope 3 category-level reporting to match Microsoft's granularity
- Strengthen net-zero target scope language given the company's scale

**Microsoft**
- Publish an interim glide-path toward the 2030 carbon-negative target
- Improve waste diversion (61.4% vs. peers' 84–88%)
- Maintain existing Scope 3 reporting rigor

**Google**
- Accelerate progress on the 24/7 CFE metric to close the gap with its annual-matching headline
- Publish a verified, primary-source Water Use Effectiveness figure
- Continue publishing both headline and more stringent internal performance metrics

**Industry-Wide**
- Adopt a standardized Scope 3 category disclosure floor
- Move toward hourly/real-time renewable energy accounting industry-wide
- **Require absolute and normalized (intensity) metrics to be disclosed side by side** — this project's central finding is that efficiency improvements can coexist with, and be outpaced by, rising absolute footprints

## Tools & Skills Demonstrated

- **Excel** — data extraction, cleaning, and normalization across three primary sources
- **SQLite / SQL** — aggregation, window functions, comparability filtering, normalized schema design
- **DB Browser for SQLite** — database management
- **Power BI** — KPI dashboards, interactive navigation, executive-level reporting
- **ESG domain knowledge** — GHG Protocol, Scope 1/2/3 analysis, renewable energy accounting, water/waste metrics

## Cross-Industry Insights

1. "100% renewable electricity" does not necessarily mean identical sustainability performance — accounting methodology matters as much as the headline number.
2. Scope 3 remains the dominant decarbonization challenge across all three companies, despite strong Scope 1/2 control.
3. AI-driven compute growth is increasing electricity demand faster than efficiency improvements can offset.
4. Differences in reporting boundary and methodology materially affect cross-company benchmarking.
5. Companies are increasingly disclosing methodology with the same rigor as environmental performance itself — a form of accountability that raw performance numbers alone don't capture.

## Limitations

- **Single-year snapshot (FY2025).** Trajectory claims rely on YoY figures disclosed narratively in company reports, not structured multi-year data.
- **Scope 3 sub-categories are not fully aligned** — only 5 of ~9–13 disclosed categories match across all three companies.
- **Amazon's disclosure gaps** limit some comparisons to two-way (Microsoft vs. Google) rather than three-way.
- **Fiscal year misalignment** — Microsoft reports Jul–Jun; Amazon and Google report calendar-year.

Full limitations detail, including data-confidence notes, in [`/Documentation/Full_Report.md`](/Documentation/Full_Report.md).

## Future Improvements

- Automate PDF extraction and SQL refresh for future reporting years
- Extend to 3–5 years of history for genuine trend analysis
- Add a fourth company (e.g., Meta) as a reference point
- Validate Google's Water Use Effectiveness figure via primary sources

---

## Repository Structure

```
Big-Tech-ESG-Benchmark-FY2025/
│
├── README.md
│
├── Data/
│   ├── ESG_Master_Dataset.xlsx
│   ├── Comparability_Log.xlsx
│   └── SQL_Import.csv
│
├── SQL/
│   ├── BigTech_ESG_Queries.sql
│   └── BigTech_ESG.db
│
├── Power BI/
│   ├── BigTech_ESG_Benchmark_Dashboard.pbix
│   └── Dashboard Screenshots/
│
├── Documentation/
│   ├── Full_Report.md
│   ├── Methodology.md
│   └── Metric_Definitions.md
│
└── Images/
```

---

> This project demonstrates that sustainability benchmarking is not just a data visualization exercise — it requires understanding reporting boundaries, methodology differences, and disclosure practices before meaningful comparisons can be made. Across Amazon, Google, and Microsoft, identical headline claims (such as "100% renewable electricity") often represent fundamentally different accounting approaches, making methodological transparency just as important as the metrics themselves.
