# 📊 Executive Management Report

# ShopSphere Marketplace Performance Dashboard

# Inhalt

1. Projektübersicht
   - Zielsetzung
   - Verwendete Technologien

2. Management Summary

3. Dashboard-Konzept
   - KPI-Übersicht
   - Dashboard-Struktur
   - Interaktive Funktionen

4. Strategische Geschäftsanalysen
   4.1 Marketingbudget optimal verteilen
   4.2 Produktportfolio strategisch bewerten
   4.3 Rabattstrategie und Kundenbindung
   4.4 Umsatzkonzentration und TOP-5-%-Kunden
   4.5 A/B-Test des Checkout-Designs
   4.6 Zusätzliche Analyse: Versandoptionen
   4.7 Zusätzliche Analyse: Geräteperformance

5. Strategische Empfehlungen

6. Grenzen der Analyse



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

- Der Gesamtumsatz beträgt rund 3 Mio. USD, begleitet von einem kontinuierlichen Umsatzwachstum und einer stabilen Anzahl an Bestellungen
- Die Umsatzentwicklung weist eine ausgeprägte saisonale Spitze zum Jahresende auf. Besonders im Dezember steigt der Umsatz deutlich an, weshalb Marketing-, Logistik- und Lagerkapazitäten frühzeitig auf diese Hochphase vorbereitet werden sollten
- Marketingkanäle unterscheiden sich deutlich hinsichtlich ihrer Effizienz. Organische Kanäle erzielen den höchsten ROI, während Paid Search trotz hoher Investitionen unterdurchschnittliche Ergebnisse liefert
- Der Umsatz ist stark auf wenige Kunden konzentriert: Die Top-5-%-Kunden generieren 34,6 % des Gesamtumsatzes
- Die Produktkategorie Beauty weist die höchste Gewinnmarge auf, obwohl sie nicht den höchsten Umsatz erzielt
- Höhere Rabatte führen nicht zu höheren Bestellwerten und sollten daher gezielter eingesetzt werden

Die Ergebnisse bilden die Grundlage für konkrete Handlungsempfehlungen zur Optimierung des Marketingbudgets, der Produktstrategie und des Kundenmanagements

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


# 4. Strategische Geschäfsanalyse
## Case A. Marketingbudget optimal verteilen

### Management Fragestellung

Wie sollte das Marketingbudget zukünftig auf die einzelnen Akquisitionskanäle verteilt werden, wenn sowohl die kurzfristige Kampagneneffizienz (ROI) als auch der langfristige Kundenwert (Customer Lifetime Value, LTV) berücksichtigt werden?

---

### Executive Insight

Die Analyse zeigt, dass Marketingkanäle hinsichtlich ihrer kurzfristigen Effizienz und ihres langfristigen Kundenwerts deutliche Unterschiede aufweisen. Während einzelne Kanäle einen hohen Return on Investment erzielen, schaffen andere besonders wertvolle Kundenbeziehungen über den gesamten Kundenlebenszyklus. Eine nachhaltige Budgetallokation sollte daher beide Kennzahlen gemeinsam berücksichtigen.

---

### 1. ROI-Analyse

### Zielsetzung

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

### Zielsetzung

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

### Wesentliche Erkenntnisse

- ROI und Customer Lifetime Value zeigen insgesamt eine hohe Übereinstimmung.
- Organic Marketing verbindet den höchsten ROI mit einem überdurchschnittlichen Customer Lifetime Value.
- Influencer-Marketing gewinnt die langfristig wertvollsten Kunden.
- Referral-Kunden besitzen trotz eines nur durchschnittlichen ROI einen außergewöhnlich hohen Lifetime Value.
- Paid Search weist sowohl den niedrigsten ROI als auch den geringsten Customer Lifetime Value auf.
- Die Analyse bestätigt, dass nicht jeder Neukunde den gleichen langfristigen Unternehmenswert besitzt.

---

### Geschäftliche Bewertung

Für strategische Budgetentscheidungen sollte der Return on Investment nicht isoliert betrachtet werden.

Die Analyse zeigt, dass die aktuelle Budgetverteilung nicht vollständig der Effizienz der Marketingkanäle entspricht. Besonders Organic und Email Marketing erzielen überdurchschnittliche Ergebnisse, während Paid Search trotz höherer Investitionen den geringsten ROI aufweist. Eine performanceorientierte Budgetallokation bietet das Potenzial, die Marketingeffizienz nachhaltig zu steigern. Der Customer Lifetime Value ergänzt die kurzfristige Effizienz um die langfristige Profitabilität der gewonnenen Kunden und ermöglicht dadurch eine nachhaltigere Ressourcenallokation.
Besonders Organic Marketing, Influencer-Marketing und Referral überzeugen sowohl hinsichtlich ihrer Wirtschaftlichkeit als auch hinsichtlich der Qualität der gewonnenen Kunden und stellen damit die attraktivsten Investitionsfelder dar.

---

### Handlungsempfehlungen

- Marketingbudget für Organic Marketing weiter ausbauen.
- Investitionen in Influencer-Marketing erhöhen, da hier die wertvollsten Kunden gewonnen werden.
- Referral-Programme gezielt erweitern und Anreizsysteme für Empfehlungen stärken.
- Email-Marketing weiterhin zur Kundenbindung einsetzen.
- Social-Ads-Kampagnen hinsichtlich Zielgruppenansprache und Kampagnenqualität optimieren.
- Budget für Paid Search kritisch überprüfen und nur bei nachweisbarer Performance weiter ausbauen.

---

### Risiken und Annahmen

- Die Analyse basiert auf historischen Kampagnendaten und setzt vergleichbare Marktbedingungen voraus.
- Der Customer Lifetime Value jüngerer Kundengruppen könnte aufgrund des begrenzten Beobachtungszeitraums unterschätzt sein.
- Veränderungen der Marketingstrategie oder externer Marktbedingungen können die zukünftige Performance beeinflussen.
- Akquisitionskosten innerhalb der einzelnen Kanäle wurden ausschließlich über den ROI berücksichtigt.

---

### Fazit

Die kombinierte Betrachtung von ROI und Customer Lifetime Value liefert eine belastbare Entscheidungsgrundlage für die zukünftige Marketingstrategie. Die Ergebnisse sprechen eindeutig für eine stärkere Fokussierung auf Organic Marketing, Influencer-Marketing und Referral-Programme, während Paid Search und Social Ads hinsichtlich ihrer Wirtschaftlichkeit konsequent optimiert beziehungsweise kritisch hinterfragt werden sollten.



## Case B. Produktportfolio strategisch bewerten

### Management Fragestellung

Welche Produktkategorien schaffen den größten wirtschaftlichen Mehrwert? Welche Kategorien erzeugen lediglich hohe Umsätze und welche besitzen das größte strategische Wachstumspotenzial?

---

### Management Summary

Die Analyse zeigt, dass hohe Umsätze nicht zwangsläufig eine hohe Profitabilität bedeuten. Während Electronics den Großteil des Gesamtumsatzes generiert, weist die Kategorie gleichzeitig die niedrigste Marge sowie eine überdurchschnittlich hohe Retourenquote auf. Im Gegensatz dazu erzielt Beauty trotz vergleichsweise geringer Umsätze die höchste Marge bei gleichzeitig niedriger Retourenquote und stellt damit den attraktivsten Wachstumskandidaten innerhalb des Produktportfolios dar.

---

### 1. Analyse der Produktkategorien

### Zielsetzung

Bewertung der Produktkategorien anhand von drei zentralen Leistungskennzahlen:

- Gesamtumsatz
- Durchschnittliche Gewinnmarge
- Retourenquote

### Visualisierung

<img width="781" height="777" alt="image" src="https://github.com/user-attachments/assets/26f5f92e-161b-49ee-a85a-afd3e34a35db" />


### Management Snapshot

| Kategorie | Umsatz | Marge | Retouren | Bewertung |
|-----------|--------:|-------:|----------:|-----------|
| Electronics | 2,10 Mio. USD | 12 % | 15,97 % | Umsatztreiber mit geringer Profitabilität |
| Home & Kitchen | 0,58 Mio. USD | 35 % | 10,27 % | Ausgewogenes Kernportfolio |
| Sports | 0,34 Mio. USD | 30 % | 8,40 % | Solide Performance |
| Clothing | 0,25 Mio. USD | 45 % | 16,00 % | Hohe Marge, jedoch hohe Retouren |
| Beauty | 0,17 Mio. USD | 55 % | 9,97 % | Hidden Gem |
| Toys | 0,14 Mio. USD | 40 % | 8,98 % | Überdurchschnittliche Profitabilität |
| Books | 0,09 Mio. USD | 25 % | 8,13 % | Geringe wirtschaftliche Relevanz |

---

### 2. Strategische Bewertung des Produktportfolios

Die gemeinsame Betrachtung von Umsatz, Marge und Retourenquote ermöglicht eine deutlich fundiertere Bewertung der Produktkategorien als die isolierte Analyse einzelner Kennzahlen.

Während Electronics den höchsten Umsatz erzielt, reduziert die Kombination aus niedriger Marge und hoher Retourenquote die tatsächliche Profitabilität erheblich.

Demgegenüber erwirtschaftet Beauty trotz geringer Umsatzanteile die höchste Marge bei gleichzeitig niedrigen Retouren und besitzt damit das größte strategische Wachstumspotenzial.

Home & Kitchen zeigt das ausgewogenste Verhältnis zwischen Umsatz, Profitabilität und Retourenquote und bildet damit das stabile Kerngeschäft des Unternehmens.

---

### Portfolioklassifizierung

| Kategorie | Strategische Rolle |
|------------|-------------------|
| Electronics | Umsatztreiber |
| Home & Kitchen | Kernportfolio |
| Beauty | Hidden Gem |
| Toys | Profitabler Nischenmarkt |
| Sports | Solides Wachstumspotenzial |
| Clothing | Optimierungskandidat |
| Books | Niedrige strategische Priorität |

---

### Wesentliche Erkenntnisse

- Hohe Umsätze sind kein verlässlicher Indikator für hohe Profitabilität.
- Electronics erzeugt den größten Umsatz, weist jedoch die niedrigste Marge sowie die höchste Retourenquote auf.
- Beauty erzielt die höchste Marge bei gleichzeitig moderater Retourenquote und stellt die attraktivste Wachstumskategorie dar.
- Home & Kitchen verbindet stabile Umsätze mit einer ausgewogenen Profitabilität und bildet das wirtschaftliche Kernportfolio.
- Clothing erzielt zwar hohe Margen, verliert jedoch einen Teil dieses Vorteils durch eine überdurchschnittlich hohe Retourenquote.
- Toys erreicht trotz geringer Umsätze eine attraktive Profitabilität und sollte als profitable Nischenkategorie weiterentwickelt werden.

---

### Geschäftliche Bewertung

Die Analyse verdeutlicht, dass die Unternehmenssteuerung nicht ausschließlich auf Umsatzkennzahlen basieren sollte. Erst die Kombination aus Umsatz, Gewinnmarge und Retourenquote liefert ein realistisches Bild der wirtschaftlichen Leistungsfähigkeit einzelner Produktkategorien.

Die Ergebnisse sprechen dafür, Ressourcen gezielt auf margenstarke und gleichzeitig stabile Kategorien zu konzentrieren, anstatt ausschließlich umsatzstarke Produktgruppen weiter auszubauen.

---

### Handlungsempfehlungen
- Beauty gezielt durch Marketing- und Sortimentsmaßnahmen weiterentwickeln.
- Home & Kitchen als strategisches Kernportfolio kontinuierlich stärken.
- Ursachen der hohen Retourenquote im Segment Electronics analysieren und reduzieren.
- Clothing hinsichtlich Produktqualität, Größenberatung und Retourenmanagement optimieren.
- Toys als profitable Nischenkategorie gezielt fördern.
- Erfolgsmessung zukünftiger Sortimentsentscheidungen grundsätzlich auf Umsatz, Marge und Retourenquote kombinieren.

---

### Risiken und Annahmen

- Die Analyse berücksichtigt keine Lager-, Logistik- oder Marketingkosten auf Kategorieebene.
- Saisonale Nachfrageeffekte wurden nicht separat untersucht.
- Durchschnittliche Margen können Unterschiede innerhalb einzelner Produktgruppen verdecken.
- Eine Reduzierung umsatzstarker Kategorien kann kurzfristige Auswirkungen auf den Gesamtumsatz haben.

---

### Fazit

Die Analyse widerlegt die Annahme, dass die umsatzstärkste Kategorie automatisch den höchsten wirtschaftlichen Beitrag leistet. Während Electronics vor allem als Umsatztreiber fungiert, überzeugen Beauty und Home & Kitchen durch ihre deutlich attraktivere Profitabilität. Für eine nachhaltige Unternehmensentwicklung sollten zukünftige Sortiments- und Investitionsentscheidungen auf einer ganzheitlichen Bewertung aus Umsatz, Marge und Retourenquote basieren.



## Case C. Rabattstrategie und Kundenbindung

### Management Fragestellung

Beeinflussen hohe Rabatte die langfristige Kundenbindung?

Ziel dieser Analyse ist es zu untersuchen, ob Kunden mit hohen durchschnittlichen Rabatten häufiger oder seltener erneut bestellen als Kunden mit niedrigeren Rabatten.

---

### Executive Insight

Bereits die Analyse der Rabattstufen zeigte, dass höhere Rabatte weder den Bestellwert noch das Bestellvolumen nachhaltig steigern.

Die anschließende Kundenanalyse ergänzt dieses Bild: Kunden mit einem durchschnittlichen Rabatt von über 20 % tätigen im Mittel lediglich 2,11 Bestellungen, während alle übrigen Kunden durchschnittlich 4,40 Bestellungen aufweisen.

Die Ergebnisse sprechen dafür, dass hohe Rabatte kurzfristig keinen erkennbaren Mehrwert schaffen und gleichzeitig mit einer geringeren Kundenbindung verbunden sind.

---

### Analyse

Die Bewertung erfolgte in zwei Schritten.

### 1. Kurzfristige Wirkung von Rabatten

Zunächst wurde untersucht, wie sich unterschiedliche Rabattstufen auf Bestellvolumen und durchschnittlichen Bestellwert auswirken.

### Visualisierung

<img width="602" height="767" alt="image" src="https://github.com/user-attachments/assets/1c41d443-6b6b-46eb-bea4-858900cc9c9b" />


Die Analyse zeigt, dass höhere Rabatte nicht zu höheren durchschnittlichen Bestellwerten führen. Gleichzeitig steigt auch die Anzahl der Bestellungen nicht proportional mit zunehmenden Rabatten.

---

### 2. Langfristige Wirkung auf die Kundenbindung

Im zweiten Schritt wurden die Kunden anhand ihres durchschnittlichen persönlichen Rabattniveaus in zwei Gruppen eingeteilt:

- High Discount (>20 %)
- Regular Customers (≤20 %)

Für beide Gruppen wurde anschließend die durchschnittliche Anzahl der Bestellungen pro Kunde berechnet.

### Visualisierung

*Dashboard: Kundenbindung nach Rabattverhalten*

<img width="1234" height="203" alt="image" src="https://github.com/user-attachments/assets/78c32647-0acf-4713-9601-98dbdbb023ec" />


---

### Management Snapshot

| Kundengruppe | Durchschnittlicher Rabatt | Bestellungen pro Kunde |
|--------------|--------------------------:|-----------------------:|
| Regular Customers | 4,41 % | 4,40 |
| High Discount (>20 %) | 29,22 % | 2,11 |

---

### Interpretation

Die Kombination beider Analysen liefert ein konsistentes Bild.

Einerseits erhöhen hohe Rabatte den durchschnittlichen Bestellwert nicht. Andererseits zeigen stark rabattorientierte Kunden eine deutlich geringere Wiederkaufsaktivität.

Damit liefern hohe Rabatte in diesem Datensatz weder einen klaren kurzfristigen noch einen langfristigen Vorteil.

---

### Wesentliche Erkenntnisse

- Höhere Rabatte steigern den durchschnittlichen Bestellwert nicht.
- Rabattorientierte Kunden bestellen langfristig deutlich seltener.
- Preisnachlässe allein scheinen kein nachhaltiges Instrument zur Steigerung der Kundenloyalität zu sein.

---

### Geschäftliche Bewertung

Die Ergebnisse sprechen dafür, Rabattaktionen gezielter einzusetzen und stärker auf langfristige Kundenbindung statt auf kurzfristige Absatzsteigerung auszurichten.

---

### Handlungsempfehlungen

- Rabatte gezielt für die Neukundengewinnung oder saisonale Kampagnen einsetzen.
- Stammkunden stärker über Loyalty-Programme und personalisierte Angebote binden.
- Die Profitabilität von Kunden mit hohen Rabattniveaus regelmäßig überwachen.

---

### Risiken und Annahmen

Die Analyse zeigt statistische Zusammenhänge, erlaubt jedoch keine Aussage über eine ursächliche Wirkung von Rabatten auf das Bestellverhalten. Weitere Einflussfaktoren wie Produkttyp, Marketingkanal oder Kundensegment wurden in dieser Auswertung nicht berücksichtigt.

---

### Fazit

Die beiden Analysen ergänzen sich zu einem gemeinsamen Management-Insight:

Hohe Rabatte zeigen in diesem Datensatz weder einen nachhaltigen positiven Effekt auf den Bestellwert noch auf die Kundenbindung. Eine langfristig erfolgreiche Rabattstrategie sollte daher gezielt eingesetzt und durch weitere Maßnahmen zur Kundenbindung ergänzt werden.



## Case D. Umsatzkonzentration und Analyse der TOP-5-%-Kunden

### Management Fragestellung

Wie stark konzentriert sich der Unternehmensumsatz auf wenige Kunden und wodurch unterscheiden sich die umsatzstärksten Kunden von der übrigen Kundenbasis?

Ziel dieser Analyse ist es, die Bedeutung der wertvollsten Kunden für den Unternehmenserfolg zu bewerten und Ansatzpunkte für eine gezielte Kundenbindungsstrategie abzuleiten.

---

### Executive Insight

Die Analyse zeigt eine deutliche Umsatzkonzentration: Die TOP-5-% der Kunden generieren 34,6 % des gesamten Unternehmensumsatzes.

Im Vergleich zur übrigen Kundenbasis erzielen diese Kunden einen 10-fach höheren Umsatz pro Kunde, tätigen viermal mehr Bestellungen und weisen einen 2,6-fach höheren durchschnittlichen Bestellwert auf.

Diese Ergebnisse unterstreichen die hohe strategische Bedeutung dieses Kundensegments für das langfristige Unternehmenswachstum.

---

### Analyse

Zunächst wurde mithilfe einer Pareto-Analyse untersucht, wie sich der Gesamtumsatz auf die Kundenbasis verteilt.

Anschließend wurden die TOP-5-%-Kunden mit allen übrigen Kunden hinsichtlich ihrer Kaufaktivität und ihres Umsatzverhaltens verglichen.

### Visualisierung

Dashboard: Pareto-Analyse der Kundenumsätze

<img width="1442" height="765" alt="image" src="https://github.com/user-attachments/assets/50ec89a6-0fd5-449e-b222-5bcb8ad90c07" />


---

### Management Snapshot

| KPI | Übrige Kunden | TOP 5 % |
|-----|--------------:|---------:|
| Revenue Share | 65,4 % | 34,6 % |
| Revenue per Customer | $705 | $7.081 |
| Average Order Value | $216 | $554 |
| Orders per Customer | 3,27 | 13,21 |

---

### Interpretation

Die Pareto-Analyse bestätigt eine starke Umsatzkonzentration innerhalb der Kundenbasis.

Obwohl die TOP-5-% nur einen kleinen Teil aller Kunden ausmachen, erwirtschaften sie mehr als ein Drittel des Gesamtumsatzes.

Der Vergleich zeigt, dass dieser Umsatz nicht allein durch höhere Bestellwerte entsteht. Vielmehr bestellen diese Kunden deutlich häufiger und erzielen gleichzeitig einen wesentlich höheren durchschnittlichen Warenkorb.

---

### Wesentliche Erkenntnisse

- Die TOP-5-% der Kunden erwirtschaften 34,6 % des Gesamtumsatzes.
- Der Umsatz pro Kunde ist rund 10-mal höher als bei der übrigen Kundenbasis.
- TOP-Kunden bestellen etwa viermal häufiger.
- Gleichzeitig liegt ihr durchschnittlicher Bestellwert rund 2,6-mal höher.

---

### Geschäftliche Bewertung

Die Ergebnisse zeigen, dass der wirtschaftliche Erfolg des Unternehmens in hohem Maße von einem vergleichsweise kleinen Kundensegment abhängt.

Investitionen in die Bindung dieser Kunden können einen deutlich höheren wirtschaftlichen Nutzen erzielen als breit angelegte Maßnahmen für die gesamte Kundenbasis.

---

### Handlungsempfehlungen

- VIP- und Loyalty-Programme gezielt auf die TOP-5-%-Kunden ausrichten.
- Personalisierte Angebote und exklusive Vorteile für dieses Kundensegment entwickeln.
- Frühzeitig Indikatoren für Abwanderungsrisiken identifizieren und geeignete Retention-Maßnahmen einleiten.
- Die Entwicklung des Umsatzanteils der TOP-Kunden regelmäßig überwachen.

---

### Risiken und Annahmen

Die Analyse basiert ausschließlich auf historischen Umsatzdaten. Weitere Einflussfaktoren wie Kundenzufriedenheit, Marketingmaßnahmen oder zukünftiges Kaufverhalten wurden nicht berücksichtigt.

---

### Fazit

Die Analyse bestätigt eine ausgeprägte Umsatzkonzentration innerhalb der Kundenbasis. Die TOP-5-%-Kunden leisten einen überproportionalen Beitrag zum Unternehmenserfolg und unterscheiden sich deutlich hinsichtlich Kaufhäufigkeit, durchschnittlichem Bestellwert und Umsatz pro Kunde.

Aus strategischer Sicht stellt dieses Kundensegment einen der wichtigsten Hebel für nachhaltiges Umsatzwachstum und langfristige Kundenbindung dar.



## Case E. A/B-Test des Checkout-Designs

<img width="1364" height="769" alt="image" src="https://github.com/user-attachments/assets/c72a0b15-883c-4d75-a8bf-f53d9590cefb" />


### Fazit

Der aggregierte Vergleich deutet zunächst darauf hin, dass Variante B den durchschnittlichen Bestellwert leicht verbessert (+2 %).

Die Segmentanalyse zeigt jedoch ein differenzierteres Bild: Der positive Effekt entsteht fast ausschließlich bei Neukunden (+19 %), während sich bei Bestandskunden praktisch kein relevanter Unterschied (+1 %) beobachten lässt.

Dieses Ergebnis verdeutlicht die Bedeutung einer segmentierten Auswertung und illustriert den Simpson-Paradoxon-Effekt: Aggregierte Kennzahlen können wichtige Unterschiede zwischen Kundengruppen verdecken.

Empfehlung: Variante B zunächst gezielt für Neukunden ausrollen und den Effekt anschließend in einem kontrollierten Rollout weiter beobachten, anstatt die neue Version unmittelbar für alle Kunden einzuführen.



### Zusätzliche Analyse: Geräteperformance

#### Visualisierung

<img width="1439" height="250" alt="image" src="https://github.com/user-attachments/assets/4d12a43f-c3c9-484e-8898-62b57af911d1" />


Die Analyse zeigt, dass mobile Endgeräte den größten Umsatzbeitrag leisten und damit den wichtigsten Vertriebskanal im Online-Shop darstellen.

Gleichzeitig unterscheiden sich die durchschnittlichen Bestellwerte zwischen den Geräten nur geringfügig (ca. **271–299 $**). Die Ergebnisse deuten darauf hin, dass die Umsatzunterschiede hauptsächlich durch das Bestellvolumen und nicht durch ein abweichendes Kaufverhalten pro Bestellung entstehen.

Empfehlung: Die Optimierung der mobilen User Experience sollte weiterhin Priorität haben, da Verbesserungen auf mobilen Geräten den größten Einfluss auf den Gesamtumsatz erwarten lassen.



### Zusätzliche Analyse: Versandoptionen

#### Visualisierung

<img width="1438" height="224" alt="image" src="https://github.com/user-attachments/assets/01a1098a-b448-4d34-804d-a4fcfea76512" />


Die Analyse zeigt, dass kostenloser Versand den überwiegenden Teil des Unternehmensumsatzes generiert und gleichzeitig mit einem deutlich höheren durchschnittlichen Bestellwert verbunden ist.

Allerdings weist diese Versandoption auch eine nahezu doppelt so hohe Retourenquote auf (**10,7 %** gegenüber 5,8 % bei kostenpflichtigem Versand). Dies deutet darauf hin, dass größere Warenkörbe zwar den Umsatz steigern, gleichzeitig jedoch das Risiko von Rücksendungen erhöhen.

Empfehlung: Kostenlosen Versand gezielt als Marketinginstrument einsetzen und die Retourenkosten kontinuierlich überwachen, um die Profitabilität sicherzustellen.



# 5. Strategische Empfehlungen

- Marketingbudget zugunsten der Kanäle Organic, Influencer und Referral umverteilen

- Beauty und Home & Kitchen stärker fördern, da diese Kategorien hohe Margen erzielen

- Rabattaktionen gezielt einsetzen und nicht als allgemeines Wachstumsinstrument verwenden

- VIP- und Loyalty-Programme für die umsatzstärksten 5 % der Kunden ausbauen

- Mobile Customer Experience sowie die Vorbereitung auf das Weihnachtsgeschäft priorisieren



# 6. Grenzen der Analyse

- Die Analyse basiert ausschließlich auf historischen Transaktionsdaten

- Externe Einflussfaktoren wie Wettbewerbsaktivitäten, Marketingkampagnen oder makroökonomische Entwicklungen wurden nicht berücksichtigt

- Die Ergebnisse zeigen statistische Zusammenhänge

- Die Profitabilität wurde anhand der verfügbaren Umsatz-, Margen- und Retourendaten bewertet; weitere Kostenfaktoren konnten nicht berücksichtigt werden

- Die Handlungsempfehlungen beziehen sich ausschließlich auf den analysierten Zeitraum und sollten regelmäßig anhand neuer Daten überprüft werden

