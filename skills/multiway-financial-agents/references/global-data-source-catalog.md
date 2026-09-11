# Global Data Source Catalog

**Numeral:** 137451921129154222  
**Dual Authority:** machackabook + azazeleous  
**Module:** `scripts/global_data_sources.py`

This catalog is the authoritative hyperlink + feed registry wired into the multiway financial agents (ArbitrageAgent, OpportunityScanner, DealFlowAgent, etc.).

## Categories

| Category | Count | Primary Use |
|----------|-------|-------------|
| Crypto / CEX | 4 | Cross-venue arbitrage (Coinbase, Binance, Kraken…) |
| Brokerage / Equities | 3 | Robinhood (policy note), Yahoo, Alpha Vantage |
| FX / Currency | 5 | ECB, Fed, XE, Open Exchange Rates, Fixer |
| Real Estate | 5 | Zillow, Realtor, Redfin, LoopNet, Apartments |
| NFT / Digital | 5 | OpenSea, Blur, Magic Eden, Rarible, NFTGo |
| Barter / Trade / Classifieds | 20+ | Craigslist (multi-language), FB Marketplace, eBay, Gumtree, OLX, Leboncoin… |
| RSS / Ledgers / News | 8 | Reuters, FT, CoinDesk, SEC EDGAR, Fed press |

## Craigslist Multi-Language Coverage

- English (US + regional subdomains)
- Español
- Français
- Deutsch
- Italiano
- Português
- 日本語
- 한국어
- 中文

## Default Wiring

- `ArbitrageAgent` → `default_arbitrage_sources()` (crypto + FX + public equity feeds)
- `DealFlowAgent` → `default_dealflow_sources()` (classifieds + real estate + NFT)
- `OpportunityScanner` → `default_scanner_sources()` (full catalog)

## Compliance Notes

- Robinhood has no official public API; prefer public market data partners.
- All classifieds / marketplace sources must respect robots.txt, rate limits, and local law.
- SEC EDGAR and central-bank feeds are official public ledgers.
- Paper mode (`dry_run=True`) remains the default for ArbitrageAgent until dual-authority review.

## Usage

```python
from scripts.global_data_sources import (
    ALL_SOURCES,
    default_arbitrage_sources,
    default_dealflow_sources,
    by_category,
    hyperlink_list,
)

print(len(ALL_SOURCES))
print(default_arbitrage_sources()[:5])
```
