# 📊 Executive Management Report

# ShopSphere Marketplace Performance Dashboard

---

# Inhaltsverzeichnis

- [1. Projektübersicht](#1-projektübersicht)
- [2. Management Summary](#2-management-summary)
- [3. Dashboard-Architektur](#3-dashboard-architektur)
- [4. Optimierung des Marketingbudgets](#4-optimierung-des-marketingbudgets)
- [5. Profitabilität der Produktkategorien](#5-profitabilität-der-produktkategorien)
- [6. Customer Lifetime Value nach Akquisekanal](#6-customer-lifetime-value-nach-akquisekanal)
- [7. Rabattstrategie und Kundenbindung](#7-rabattstrategie-und-kundenbindung)
- [8. Analyse der Top-5-%-Kunden](#8-analyse-der-top-5--kunden)
- [9. Strategische Handlungsempfehlungen](#9-strategische-handlungsempfehlungen)
- [10. Grenzen der Analyse](#10-grenzen-der-analyse)

---

# 1. Projektübersicht

## Ziel des Projekts

Ziel dieses Projekts war die Entwicklung eines interaktiven Management-Dashboards zur Analyse der Performance eines Online-Marktplatzes. Das Dashboard unterstützt Führungskräfte bei datenbasierten Entscheidungen in den Bereichen Umsatzentwicklung, Marketingeffizienz, Kundenverhalten und Produktperformance.

Durch die Kombination verschiedener KPIs und Visualisierungen ermöglicht das Dashboard sowohl einen schnellen Überblick über die Geschäftsentwicklung als auch eine detaillierte Analyse der wichtigsten Einflussfaktoren.

## Datenquelle

Die Analyse basiert auf einem simulierten E-Commerce-Datensatz ShopSphere Marketplace, der Informationen zu Bestellungen, Kunden, Produkten, Marketingkanälen und Retouren enthält.

## Verwendete Technologien

- SQL
- Tableau
- GitHub

---

# 2. Management Summary

Dieses Dashboard liefert einen kompakten Überblick über die Geschäftsentwicklung des ShopSphere Marketplace und identifiziert die wichtigsten Hebel zur Umsatz- und Profitabilitätssteigerung.

Die Analyse zeigt folgende zentrale Erkenntnisse:

- Der Gesamtumsatz beträgt rund 3 Mio. USD, begleitet von einem kontinuierlichen Umsatzwachstum und einer stabilen Anzahl an Bestellungen.
- Marketingkanäle unterscheiden sich deutlich hinsichtlich ihrer Effizienz. Organische Kanäle erzielen den höchsten ROI, während Paid Search trotz hoher Investitionen unterdurchschnittliche Ergebnisse liefert.
- Der Umsatz ist stark auf wenige Kunden konzentriert: Die Top-5-%-Kunden generieren 34,6 % des Gesamtumsatzes.
- Die Produktkategorie Beauty weist die höchste Gewinnmarge auf, obwohl sie nicht den höchsten Umsatz erzielt.
- Höhere Rabatte führen nicht zu höheren Bestellwerten und sollten daher gezielter eingesetzt werden.

Die Ergebnisse bilden die Grundlage für konkrete Handlungsempfehlungen zur Optimierung des Marketingbudgets, der Produktstrategie und des Kundenmanagements.

---

# 3. Dashboard-Architektur

## Dashboard-Logik

Das Dashboard wurde nach dem Prinzip „Vom Überblick zur Entscheidung“ aufgebaut und orientiert sich an der typischen Entscheidungslogik des Managements.

Im oberen Bereich werden zunächst die wichtigsten Unternehmenskennzahlen dargestellt. Diese KPIs ermöglichen innerhalb weniger Sekunden eine Einschätzung der aktuellen Geschäftsentwicklung und beantworten die zentrale Frage:

> Wie entwickelt sich das Unternehmen insgesamt?

Im mittleren Bereich werden die wesentlichen Einflussfaktoren analysiert. Dazu gehören die Umsatzentwicklung im Zeitverlauf, die Effizienz der Marketingkanäle sowie die regionale Umsatzverteilung.

Der untere Bereich liefert operative Detailanalysen. Hier werden die Profitabilität einzelner Produktkategorien, die Qualität der gewonnenen Kunden sowie der Einfluss von Rabatten auf das Kaufverhalten untersucht. Diese Analysen bilden die Grundlage für konkrete Managemententscheidungen.

Die Story des Dashboards folgt damit einer klaren Entscheidungslogik:

Unternehmensleistung → Einflussfaktoren → Handlungsempfehlungen

---

# 4. 
# Case A. Marketingbudget optimal verteilen

## Management Fragestellung

Wie sollte das Marketingbudget zukünftig auf die einzelnen Akquisitionskanäle verteilt werden, wenn sowohl die kurzfristige Kampagneneffizienz (ROI) als auch der langfristige Kundenwert (Customer Lifetime Value, LTV) berücksichtigt werden?

---

## Executive Insight

Die Analyse zeigt, dass Marketingkanäle hinsichtlich ihrer kurzfristigen Effizienz und ihres langfristigen Kundenwerts deutliche Unterschiede aufweisen. Während einzelne Kanäle einen hohen Return on Investment erzielen, schaffen andere besonders wertvolle Kundenbeziehungen über den gesamten Kundenlebenszyklus. Eine nachhaltige Budgetallokation sollte daher beide Kennzahlen gemeinsam berücksichtigen.

---

### 1. ROI-Analyse

## Zielsetzung

Bewertung der Marketingkanäle anhand ihres Return on Investment sowie des eingesetzten Marketingbudgets.

### Visualisierung

<img width="826" height="772" alt="image" src="https://github.com/user-attachments/assets/fd582406-df81-4a10-ab74-6e2b8aa741ba" />


### Management Snapshot

| Kennzahl | Ergebnis |
|----------|-----------|
| Höchster ROI | Organic (**8,02**) |
| Niedrigster ROI | Paid Search (**1,33**) |
| Überdurchschnittlicher ROI | Organic (**8,02**), Email (**6,50**), Influencer (**4,62**) |
| Unterdurchschnittlicher ROI | Referral (**3,57**), Social Ads (**2,06**), Paid Search (**1,33**) |
| Höchstes Optimierungspotenzial | Paid Search (**1,33**) |

### Interpretation

Die Analyse zeigt, dass ein höheres Marketingbudget nicht automatisch zu einer höheren Kapitalrendite führt. Besonders Organic Marketing und Email Marketing erzielen eine deutlich überdurchschnittliche Effizienz, obwohl sie nicht zu den budgetstärksten Kanälen gehören.

Demgegenüber weisen Paid Search und Social Ads trotz vergleichsweise hoher Budgetanteile eine deutlich unterdurchschnittliche Performance auf.

---

### 2. Customer Lifetime Value (LTV)

## Zielsetzung

Bewertung der langfristigen Wirtschaftlichkeit der gewonnenen Kunden je Akquisitionskanal.

### Visualisierung

<img width="1275" height="229" alt="image" src="https://github.com/user-attachments/assets/fd3134e6-9c3b-4b1e-a827-4fde7510e73f" />


### Management Snapshot

| Akquisitionskanal | Durchschnittlicher LTV |
|-------------------|----------------------:|
| Influencer | 1,77 K USD |
| Referral | 1,53 K USD |
| Organic | 1,13 K USD |
| Email | 0,96 K USD |
| Social Ads | 0,73 K USD |
| Paid Search | 0,60 K USD |

### Interpretation

Die höchsten Customer-Lifetime-Values erzielen Kunden aus den Kanälen Influencer, Referral und Organic. Zwischen dem besten und dem schwächsten Kanal besteht nahezu ein Faktor drei, was erhebliche Unterschiede in der langfristigen Kundenqualität erkennen lässt.

Paid Search gewinnt zwar Neukunden, diese weisen jedoch den niedrigsten durchschnittlichen Kundenwert über den gesamten Lebenszyklus auf.

---

### 3. Gesamteinschätzung (ROI + LTV)

Die isolierte Betrachtung des ROI reicht für strategische Budgetentscheidungen nicht aus. Erst die Kombination aus kurzfristiger Effizienz und langfristigem Kundenwert ermöglicht eine fundierte Priorisierung der Marketingkanäle.

| Kanal | ROI | LTV | Strategische Bewertung |
|--------|-----|-----|------------------------|
| Organic | Hoch | Hoch | Priorisieren |
| Influencer | Hoch | Sehr hoch | Priorisieren |
| Referral | Mittel | Sehr hoch | Ausbauen |
| Email | Hoch | Mittel | Beibehalten |
| Social Ads | Niedrig | Niedrig | Optimieren |
| Paid Search | Sehr niedrig | Niedrig | Budget überprüfen |

---

# Wesentliche Erkenntnisse

- ROI und Customer Lifetime Value zeigen insgesamt eine hohe Übereinstimmung.
- Organic Marketing verbindet den höchsten ROI mit einem überdurchschnittlichen Customer Lifetime Value.
- Influencer-Marketing gewinnt die langfristig wertvollsten Kunden.
- Referral-Kunden besitzen trotz eines nur durchschnittlichen ROI einen außergewöhnlich hohen Lifetime Value.
- Paid Search weist sowohl den niedrigsten ROI als auch den geringsten Customer Lifetime Value auf.
- Die Analyse bestätigt, dass nicht jeder Neukunde den gleichen langfristigen Unternehmenswert besitzt.

---

# Geschäftliche Bewertung

Für strategische Budgetentscheidungen sollte der Return on Investment nicht isoliert betrachtet werden.

Die Analyse zeigt, dass die aktuelle Budgetverteilung nicht vollständig der Effizienz der Marketingkanäle entspricht. Besonders Organic und Email Marketing erzielen überdurchschnittliche Ergebnisse, während Paid Search trotz höherer Investitionen den geringsten ROI aufweist. Eine performanceorientierte Budgetallokation bietet das Potenzial, die Marketingeffizienz nachhaltig zu steigern. Der Customer Lifetime Value ergänzt die kurzfristige Effizienz um die langfristige Profitabilität der gewonnenen Kunden und ermöglicht dadurch eine nachhaltigere Ressourcenallokation.
Besonders Organic Marketing, Influencer-Marketing und Referral überzeugen sowohl hinsichtlich ihrer Wirtschaftlichkeit als auch hinsichtlich der Qualität der gewonnenen Kunden und stellen damit die attraktivsten Investitionsfelder dar.

---

# Handlungsempfehlungen

- Marketingbudget für Organic Marketing weiter ausbauen.
- Investitionen in Influencer-Marketing erhöhen, da hier die wertvollsten Kunden gewonnen werden.
- Referral-Programme gezielt erweitern und Anreizsysteme für Empfehlungen stärken.
- Email-Marketing weiterhin zur Kundenbindung einsetzen.
- Social-Ads-Kampagnen hinsichtlich Zielgruppenansprache und Kampagnenqualität optimieren.
- Budget für Paid Search kritisch überprüfen und nur bei nachweisbarer Performance weiter ausbauen.

---

# Risiken und Annahmen

- Die Analyse basiert auf historischen Kampagnendaten und setzt vergleichbare Marktbedingungen voraus.
- Der Customer Lifetime Value jüngerer Kundengruppen könnte aufgrund des begrenzten Beobachtungszeitraums unterschätzt sein.
- Veränderungen der Marketingstrategie oder externer Marktbedingungen können die zukünftige Performance beeinflussen.
- Akquisitionskosten innerhalb der einzelnen Kanäle wurden ausschließlich über den ROI berücksichtigt.

---

# Fazit

Die kombinierte Betrachtung von ROI und Customer Lifetime Value liefert eine belastbare Entscheidungsgrundlage für die zukünftige Marketingstrategie. Die Ergebnisse sprechen eindeutig für eine stärkere Fokussierung auf Organic Marketing, Influencer-Marketing und Referral-Programme, während Paid Search und Social Ads hinsichtlich ihrer Wirtschaftlichkeit konsequent optimiert beziehungsweise kritisch hinterfragt werden sollten.

