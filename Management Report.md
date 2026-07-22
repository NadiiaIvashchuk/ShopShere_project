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

## Executive Highlights

Nach kurzer Betrachtung des Dashboards sollten folgende Kernaussagen deutlich werden:

- 📈 Das Unternehmen wächst kontinuierlich und erzielt einen Gesamtumsatz von rund 3 Mio. USD.
- 🎯 Organic und Email Marketing gehören zu den effizientesten Marketingkanälen, während Paid Search den niedrigsten ROI aufweist.
- 👥 Die Top-5-%-Kunden generieren 34,6 % des Gesamtumsatzes und stellen damit eine strategisch besonders wertvolle Kundengruppe dar.

---

# 4. Optimierung des Marketingbudgets

## Business-Frage

Welche Marketingkanäle liefern den höchsten Return on Investment und wie sollte das Marketingbudget künftig verteilt werden, um die Marketingeffizienz zu steigern?

## Analyse
> 📷 Abbildung 1: Marketingbudget vs. ROI
<img width="858" height="779" alt="image" src="https://github.com/user-attachments/assets/a461421d-6bb2-44af-b6f0-af29718100ea" />

Die Analyse vergleicht die Marketingkanäle anhand ihres Return on Investment (ROI) und des eingesetzten Marketingbudgets. Die gestrichelten Referenzlinien markieren den durchschnittlichen ROI sowie das durchschnittliche Budget und ermöglichen eine schnelle Identifikation leistungsstarker und ineffizienter Kanäle.

## Management Snapshot

| Kennzahl | Ergebnis |
|-----------|----------|
| Höchster ROI | Organic (8.02) |
| Niedrigster ROI | Paid Search (1.33) |
| Überdurchschnittlicher ROI | Organic (8.02), Email (6.50), Influencer (4.62) 
| Unterdurchschnittlicher ROI | Referral (3.57), Social Ads (2.06), Paid Search (1.33) |
| Höchstes Optimierungspotenzial | Paid Search (1.33) |

## Wesentliche Beobachtungen

- Organic erzielt mit einem ROI von 8,02 den höchsten Wert aller Marketingkanäle und erreicht dieses Ergebnis mit einem unterdurchschnittlichen Budget.
- Email Marketing weist ebenfalls einen deutlich überdurchschnittlichen ROI auf und gehört zu den effizientesten Kanälen.
- Influencer Marketing liegt leicht über dem durchschnittlichen ROI und zeigt Potenzial für eine gezielte Ausweitung der Investitionen.
- Referral, Social Ads und insbesondere Paid Search liegen unter dem durchschnittlichen ROI. Paid Search erzielt die geringste Kapitalrendite, obwohl der Kanal über ein vergleichsweise hohes Budget verfügt.
- Die Analyse zeigt insgesamt, dass ein höheres Marketingbudget nicht automatisch zu einer höheren Marketingeffizienz führt.

## Geschäftliche Bewertung

Die aktuelle Budgetverteilung spiegelt die tatsächliche Leistungsfähigkeit der Marketingkanäle nur teilweise wider. Während Organic und Email Marketing den höchsten Return on Investment erzielen, fließt weiterhin ein erheblicher Anteil des Budgets in Kanäle mit unterdurchschnittlicher Performance.

Dies deutet auf Optimierungspotenzial in der Budgetallokation hin. Eine stärker datenbasierte Steuerung der Marketinginvestitionen kann dazu beitragen, die Effizienz des Marketingmixes zu erhöhen und den Ressourceneinsatz zu verbessern.

## Handlungsempfehlungen

Es wird empfohlen, die Budgetverteilung schrittweise an der Performance der Marketingkanäle auszurichten.

Ein Teil des Budgets von Paid Search und Social Ads sollte zugunsten von Organic und Email Marketing umgeschichtet werden. Für Influencer Marketing empfiehlt sich eine kontrollierte Erhöhung des Budgets, um das vorhandene Wachstumspotenzial weiter zu evaluieren.

Vor einer deutlichen Budgetreduzierung einzelner Kanäle sollten jedoch die Ursachen für deren geringe Performance analysiert werden. Insbesondere Paid Search sollte hinsichtlich Kampagnenstruktur, Keyword-Strategie und Zielgruppenansprache optimiert werden.

## Risiken und Annahmen

Die Bewertung basiert ausschließlich auf dem Return on Investment der Marketingkampagnen. Langfristige Effekte wie Markenbekanntheit, Neukundengewinnung oder der Customer Lifetime Value (LTV) werden dabei nicht berücksichtigt und sollten in einer ergänzenden Analyse untersucht werden.

## Fazit



Die Analyse zeigt, dass die aktuelle Budgetverteilung nicht vollständig der Effizienz der Marketingkanäle entspricht. Besonders Organic und Email Marketing erzielen überdurchschnittliche Ergebnisse, während Paid Search trotz höherer Investitionen den geringsten ROI aufweist. Eine performanceorientierte Budgetallokation bietet das Potenzial, die Marketingeffizienz nachhaltig zu steigern.


