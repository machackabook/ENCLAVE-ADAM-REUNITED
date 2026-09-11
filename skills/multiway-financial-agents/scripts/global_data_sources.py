"""
Global Data Source Registry for multiway-financial-agents
Numeral: 137451921129154222
Dual Authority: machackabook + azazeleous

Comprehensive hyperlink + feed catalog covering:
- Crypto / CEX (Coinbase, etc.)
- Brokerage (Robinhood)
- FX / currency rates
- Real estate
- NFT / digital assets
- Barter / trade / selling / looking-for forums
- Craigslist (multi-language / multi-region)
- Global financial RSS & ledgers
"""

from __future__ import annotations
from typing import Any

# ---------------------------------------------------------------------------
# 1. CRYPTO / CEX
# ---------------------------------------------------------------------------
CRYPTO_SOURCES: list[dict[str, Any]] = [
    {
        "id": "coinbase_pro",
        "name": "Coinbase Advanced Trade",
        "type": "cex",
        "category": "crypto",
        "url": "https://api.coinbase.com",
        "docs": "https://docs.cdp.coinbase.com/advanced-trade/docs/welcome",
        "rss": None,
        "notes": "Primary CEX. Spot + Advanced Trade API. Auth required for private.",
    },
    {
        "id": "coinbase_public",
        "name": "Coinbase Public Market Data",
        "type": "cex_public",
        "category": "crypto",
        "url": "https://api.coinbase.com/v2/prices",
        "docs": "https://docs.cdp.coinbase.com/coinbase-app/docs/api-prices",
        "rss": None,
    },
    {
        "id": "binance_public",
        "name": "Binance Public API",
        "type": "cex_public",
        "category": "crypto",
        "url": "https://api.binance.com",
        "docs": "https://binance-docs.github.io/apidocs/spot/en/",
        "rss": None,
    },
    {
        "id": "kraken_public",
        "name": "Kraken Public API",
        "type": "cex_public",
        "category": "crypto",
        "url": "https://api.kraken.com",
        "docs": "https://docs.kraken.com/rest/",
        "rss": None,
    },
]

# ---------------------------------------------------------------------------
# 2. BROKERAGE / EQUITIES
# ---------------------------------------------------------------------------
BROKERAGE_SOURCES: list[dict[str, Any]] = [
    {
        "id": "robinhood",
        "name": "Robinhood",
        "type": "brokerage",
        "category": "equities",
        "url": "https://robinhood.com",
        "api_note": "No official public API. Unofficial clients exist; use at own risk and policy compliance.",
        "docs": "https://robinhood.com/us/en/",
        "rss": None,
        "notes": "Equity + crypto + options. Prefer official data partners or public market feeds.",
    },
    {
        "id": "yahoo_finance",
        "name": "Yahoo Finance",
        "type": "market_data",
        "category": "equities",
        "url": "https://finance.yahoo.com",
        "rss": "https://finance.yahoo.com/news/rssindex",
        "notes": "Public quotes + news RSS.",
    },
    {
        "id": "alpha_vantage",
        "name": "Alpha Vantage",
        "type": "market_data",
        "category": "equities",
        "url": "https://www.alphavantage.co",
        "docs": "https://www.alphavantage.co/documentation/",
        "rss": None,
    },
]

# ---------------------------------------------------------------------------
# 3. FX / CURRENCY RATES
# ---------------------------------------------------------------------------
FX_SOURCES: list[dict[str, Any]] = [
    {
        "id": "ecb_fx",
        "name": "European Central Bank Reference Rates",
        "type": "fx_official",
        "category": "currency",
        "url": "https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html",
        "rss": "https://www.ecb.europa.eu/rss/fxref.html",
        "notes": "Daily official EUR reference rates.",
    },
    {
        "id": "fed_fx",
        "name": "Federal Reserve H.10 / Foreign Exchange",
        "type": "fx_official",
        "category": "currency",
        "url": "https://www.federalreserve.gov/releases/h10/current/",
        "rss": None,
    },
    {
        "id": "xe_currency",
        "name": "XE Currency",
        "type": "fx_retail",
        "category": "currency",
        "url": "https://www.xe.com",
        "rss": None,
    },
    {
        "id": "open_exchange_rates",
        "name": "Open Exchange Rates",
        "type": "fx_api",
        "category": "currency",
        "url": "https://openexchangerates.org",
        "docs": "https://docs.openexchangerates.org/",
        "rss": None,
    },
    {
        "id": "fixer_io",
        "name": "Fixer.io",
        "type": "fx_api",
        "category": "currency",
        "url": "https://fixer.io",
        "docs": "https://fixer.io/documentation",
        "rss": None,
    },
]

# ---------------------------------------------------------------------------
# 4. REAL ESTATE
# ---------------------------------------------------------------------------
REAL_ESTATE_SOURCES: list[dict[str, Any]] = [
    {
        "id": "zillow",
        "name": "Zillow",
        "type": "real_estate",
        "category": "property",
        "url": "https://www.zillow.com",
        "rss": None,
        "notes": "US residential. Check ToS for scraping / API access.",
    },
    {
        "id": "realtor_com",
        "name": "Realtor.com",
        "type": "real_estate",
        "category": "property",
        "url": "https://www.realtor.com",
        "rss": None,
    },
    {
        "id": "redfin",
        "name": "Redfin",
        "type": "real_estate",
        "category": "property",
        "url": "https://www.redfin.com",
        "rss": None,
    },
    {
        "id": "loopnet",
        "name": "LoopNet",
        "type": "real_estate",
        "category": "commercial",
        "url": "https://www.loopnet.com",
        "rss": None,
        "notes": "Commercial real estate.",
    },
    {
        "id": "apartments_com",
        "name": "Apartments.com",
        "type": "real_estate",
        "category": "rental",
        "url": "https://www.apartments.com",
        "rss": None,
    },
]

# ---------------------------------------------------------------------------
# 5. NFT / DIGITAL ASSETS
# ---------------------------------------------------------------------------
NFT_SOURCES: list[dict[str, Any]] = [
    {
        "id": "opensea",
        "name": "OpenSea",
        "type": "nft_marketplace",
        "category": "digital",
        "url": "https://opensea.io",
        "docs": "https://docs.opensea.io/",
        "rss": None,
    },
    {
        "id": "blur_io",
        "name": "Blur",
        "type": "nft_marketplace",
        "category": "digital",
        "url": "https://blur.io",
        "rss": None,
        "notes": "Pro NFT trading.",
    },
    {
        "id": "magic_eden",
        "name": "Magic Eden",
        "type": "nft_marketplace",
        "category": "digital",
        "url": "https://magiceden.io",
        "rss": None,
    },
    {
        "id": "rarible",
        "name": "Rarible",
        "type": "nft_marketplace",
        "category": "digital",
        "url": "https://rarible.com",
        "rss": None,
    },
    {
        "id": "nftgo",
        "name": "NFTGo Analytics",
        "type": "nft_analytics",
        "category": "digital",
        "url": "https://nftgo.io",
        "rss": None,
    },
]

# ---------------------------------------------------------------------------
# 6. BARTER / TRADE / SELLING / LOOKING-FOR FORUMS
# ---------------------------------------------------------------------------
BARTER_TRADE_SOURCES: list[dict[str, Any]] = [
    {"id": "craigslist_us", "name": "Craigslist (US English)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "sections": ["for sale", "wanted", "gigs", "housing", "services"], "notes": "Primary US classifieds. Region subdomains required."},
    {"id": "craigslist_es", "name": "Craigslist (Espa\u00f1ol)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "es"},
    {"id": "craigslist_fr", "name": "Craigslist (Fran\u00e7ais)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "fr"},
    {"id": "craigslist_de", "name": "Craigslist (Deutsch)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "de"},
    {"id": "craigslist_it", "name": "Craigslist (Italiano)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "it"},
    {"id": "craigslist_pt", "name": "Craigslist (Portugu\u00eas)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "pt"},
    {"id": "craigslist_ja", "name": "Craigslist (\u65e5\u672c\u8a9e)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "ja"},
    {"id": "craigslist_ko", "name": "Craigslist (\ud55c\uad6d\uc5b4)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "ko"},
    {"id": "craigslist_zh", "name": "Craigslist (\u4e2d\u6587)", "type": "classifieds", "category": "barter_trade", "url": "https://www.craigslist.org", "lang": "zh"},
    {"id": "facebook_marketplace", "name": "Facebook Marketplace", "type": "classifieds", "category": "barter_trade", "url": "https://www.facebook.com/marketplace"},
    {"id": "offerup", "name": "OfferUp", "type": "classifieds", "category": "barter_trade", "url": "https://offerup.com"},
    {"id": "mercari", "name": "Mercari", "type": "classifieds", "category": "barter_trade", "url": "https://www.mercari.com"},
    {"id": "ebay", "name": "eBay", "type": "marketplace", "category": "barter_trade", "url": "https://www.ebay.com", "docs": "https://developer.ebay.com/"},
    {"id": "gumtree", "name": "Gumtree (UK / AU / etc.)", "type": "classifieds", "category": "barter_trade", "url": "https://www.gumtree.com"},
    {"id": "kijiji", "name": "Kijiji (Canada)", "type": "classifieds", "category": "barter_trade", "url": "https://www.kijiji.ca"},
    {"id": "leboncoin", "name": "Leboncoin (France)", "type": "classifieds", "category": "barter_trade", "url": "https://www.leboncoin.fr", "lang": "fr"},
    {"id": "subito", "name": "Subito (Italy)", "type": "classifieds", "category": "barter_trade", "url": "https://www.subito.it", "lang": "it"},
    {"id": "willhaben", "name": "Willhaben (Austria)", "type": "classifieds", "category": "barter_trade", "url": "https://www.willhaben.at", "lang": "de"},
    {"id": "marktplaats", "name": "Marktplaats (Netherlands)", "type": "classifieds", "category": "barter_trade", "url": "https://www.marktplaats.nl", "lang": "nl"},
    {"id": "olx", "name": "OLX (multi-country)", "type": "classifieds", "category": "barter_trade", "url": "https://www.olx.com", "notes": "Large global classifieds network."},
]

# ---------------------------------------------------------------------------
# 7. GLOBAL FINANCIAL RSS / LEDGERS / NEWS
# ---------------------------------------------------------------------------
RSS_LEDGER_SOURCES: list[dict[str, Any]] = [
    {"id": "reuters_business", "name": "Reuters Business", "type": "rss", "category": "news", "url": "https://www.reuters.com/business/", "rss": "https://www.reutersagency.com/feed/?taxonomy=best-topics&post_type=best"},
    {"id": "bloomberg_markets", "name": "Bloomberg Markets", "type": "rss", "category": "news", "url": "https://www.bloomberg.com/markets", "rss": None},
    {"id": "ft_rss", "name": "Financial Times", "type": "rss", "category": "news", "url": "https://www.ft.com", "rss": "https://www.ft.com/?format=rss"},
    {"id": "wsj_markets", "name": "Wall Street Journal Markets", "type": "rss", "category": "news", "url": "https://www.wsj.com/news/markets", "rss": None},
    {"id": "coindesk", "name": "CoinDesk", "type": "rss", "category": "crypto_news", "url": "https://www.coindesk.com", "rss": "https://www.coindesk.com/arc/outboundfeeds/rss/"},
    {"id": "cointelegraph", "name": "Cointelegraph", "type": "rss", "category": "crypto_news", "url": "https://cointelegraph.com", "rss": "https://cointelegraph.com/rss"},
    {"id": "sec_edgar", "name": "SEC EDGAR", "type": "ledger", "category": "regulatory", "url": "https://www.sec.gov/edgar", "rss": "https://www.sec.gov/cgi-bin/browse-edgar?action=getcurrent&type=&company=&dateb=&owner=include&count=40&output=atom", "notes": "US corporate filings ledger."},
    {"id": "federal_reserve_rss", "name": "Federal Reserve Press", "type": "rss", "category": "macro", "url": "https://www.federalreserve.gov", "rss": "https://www.federalreserve.gov/feeds/press_all.xml"},
]

# ---------------------------------------------------------------------------
# AGGREGATED REGISTRY
# ---------------------------------------------------------------------------
ALL_SOURCES: list[dict[str, Any]] = (
    CRYPTO_SOURCES + BROKERAGE_SOURCES + FX_SOURCES + REAL_ESTATE_SOURCES
    + NFT_SOURCES + BARTER_TRADE_SOURCES + RSS_LEDGER_SOURCES
)

def by_category(category: str) -> list[dict[str, Any]]:
    return [s for s in ALL_SOURCES if s.get("category") == category]

def by_type(source_type: str) -> list[dict[str, Any]]:
    return [s for s in ALL_SOURCES if s.get("type") == source_type]

def hyperlink_list(sources: list[dict[str, Any]] | None = None) -> list[str]:
    src = sources or ALL_SOURCES
    return [s.get("url") or s.get("rss") for s in src if s.get("url") or s.get("rss")]

def default_arbitrage_sources() -> list[str]:
    return hyperlink_list(CRYPTO_SOURCES + FX_SOURCES + [s for s in BROKERAGE_SOURCES if s["id"] != "robinhood"])

def default_dealflow_sources() -> list[str]:
    return hyperlink_list(BARTER_TRADE_SOURCES + REAL_ESTATE_SOURCES + NFT_SOURCES)

def default_scanner_sources() -> list[str]:
    return hyperlink_list(ALL_SOURCES)

if __name__ == "__main__":
    print(f"Total sources registered: {len(ALL_SOURCES)}")
