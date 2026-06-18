---
marp: true
theme: default
paginate: true
size: 16:9
---

<style>
:root {
  --color-background: #ffffff;
  --color-foreground: #1a1a2e;
  --color-heading: #9945ff;
  --color-accent: #14f195;
  --color-hr: #9945ff;
  --color-muted: #777788;
  --font-default: 'Inter', 'Helvetica Neue', 'Arial', sans-serif;
  --font-mono: 'JetBrains Mono', 'Consolas', 'Monaco', monospace;
}

section {
  background-color: var(--color-background);
  background-image:
    radial-gradient(circle at 15% 15%, rgba(153, 69, 255, 0.05), transparent 45%),
    radial-gradient(circle at 85% 85%, rgba(20, 241, 149, 0.05), transparent 45%);
  color: var(--color-foreground);
  font-family: var(--font-default);
  font-weight: 400;
  box-sizing: border-box;
  position: relative;
  line-height: 1.6;
  font-size: 22px;
  padding: 64px 72px;
}

h1, h2, h3, h4, h5, h6 {
  font-weight: 700;
  margin: 0;
  padding: 0;
  letter-spacing: -0.02em;
  background: linear-gradient(135deg, #9945ff 0%, #14f195 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

h1 {
  font-size: 58px;
  line-height: 1.15;
  text-align: left;
}

h2 {
  position: absolute;
  top: 48px;
  left: 72px;
  right: 72px;
  font-size: 38px;
  padding-bottom: 16px;
}

h2::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: 4px;
  width: 72px;
  height: 3px;
  background: linear-gradient(90deg, #9945ff, #14f195);
  border-radius: 2px;
}

h2 + * {
  margin-top: 96px;
}

h3 {
  font-size: 26px;
  margin-top: 28px;
  margin-bottom: 10px;
}

ul, ol {
  padding-left: 28px;
}

li {
  margin-top: 0px !important;
  margin-bottom: 0px;
  font-size: 22px;
}

blockquote {
  border-left: 4px solid #9945ff;
  background: linear-gradient(90deg, rgba(153, 69, 255, 0.08), transparent);
  padding: 16px 24px;
  margin: 20px 0;
  font-size: 26px;
  font-style: normal;
  font-weight: 600;
  color: #1a1a2e;
  border-radius: 0 8px 8px 0;
}

code {
  background-color: rgba(153, 69, 255, 0.1);
  color: #9945ff;
  padding: 3px 10px;
  border-radius: 5px;
  font-family: var(--font-mono);
  font-size: 0.85em;
}

strong {
  color: #9945ff;
  font-weight: 700;
}

em {
  color: #444444;
  font-style: normal;
}

table {
  width: 100%;
  border-collapse: collapse;
  font-size: 17px;
  margin-top: 16px;
}

th {
  border-bottom: 2px solid #9945ff;
  padding: 10px 12px;
  text-align: left;
  font-size: 16px;
  background: linear-gradient(135deg, #9945ff 0%, #14f195 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

td {
  padding: 9px 12px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  color: var(--color-foreground);
  font-size: 16px;
}

section.lead {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

section.lead h1 {
  font-size: 72px;
}

section.lead p {
  font-size: 26px;
  color: var(--color-foreground);
  margin-top: 8px;
}

section.lead em {
  display: block;
  margin-top: 20px;
  font-size: 22px;
}

/* Metrics cards */
.metrics {
  display: flex;
  flex-wrap: wrap;
  gap: 16px;
  margin-top: 24px;
}
.metric {
  flex: 1;
  min-width: 200px;
  background: #eeeeee;
  border: 1px solid #888;
  border-radius: 10px;
  padding: 18px 22px;
}
.metric .num {
  font-size: 32px;
  font-weight: 700;
  background: linear-gradient(135deg, #9945ff 0%, #14f195 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  display: block;
}
.metric .label {
  font-size: 15px;
  color: #333;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

/* Comparison columns */
.cols {
  display: flex;
  gap: 40px;
  margin-top: 20px;
}
.col {
  flex: 1;
}
.col-title {
  font-size: 18px;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  margin-bottom: 12px;
  font-weight: 700;
}
.col-title.bad { color: #aaaaaa; }
.col-title.good {
  background: linear-gradient(135deg, #9945ff 0%, #14f195 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

footnote a {
  color: #888;
}

footnote {
  position: absolute;
  bottom: 10px;
  left: 0;
  right: 0;
  text-align: center;
  font-size: 0.7em;
  padding: 10px 20px;
  letter-spacing: 0.3px;
}
</style>

<!-- _class: lead -->
<!-- _paginate: false -->

# Tributary

**The non-custodial capital automation layer for Solana**

_Raising $250k Pre-Seed._

<footnote>
  <a href="./index.md">View markdown source</a>
</footnote>

---

## The Problem

Stablecoins are a **$300B+** asset class.
Yet every financial action on-chain is **still manual**.

- Payments
- DCA
- Treasury management
- Yield allocation
- Agent spending

> Every action requires a signature. Every signature requires a human.

On Solana, money has **no automation layer**.

---

## Our Insight

Most companies automate money by **taking custody**.
We believe custody is the problem.

Instead of holding your funds, Tributary uses Solana-native delegation:

> Approve once. Automate forever. Keep your keys.

---

## The Product

Tributary is the automation layer on Solana.
Users define rules. The protocol executes them.

- Recurring payments
- DCA into assets
- Treasury rebalancing
- Yield deployment
- AI agent budgets

> DeFiSaver for Solana — powered by a native automation primitive.

---

## Why We Win

<div class="cols">
<div class="col">
<div class="col-title bad">Others offer</div>

- Custodial automation
- Single-purpose schedulers
- Isolated DeFi products

</div>
<div class="col">
<div class="col-title good">We provide</div>

- Non-custodial execution
- Cross-protocol composability
- Developer platform + SDKs
- Full automation stack

</div>
</div>

We're building **infrastructure** for everyone, products for profit.

---

## Traction with v0 for Payments only

**Payments** is live on Solana mainnet (subscriptions, milestones and pay-as-you-go)

<div class="metrics">
<div class="metric"><span class="num">4,000+</span><span class="label">Payments executed</span></div>
<div class="metric"><span class="num">$12k+</span><span class="label">Volume processed</span></div>
<div class="metric"><span class="num">6+</span><span class="label">Inbound integrations</span></div>
<div class="metric"><span class="num">$0</span><span class="label">Marketing spend</span></div>
<div class="metric"><span class="num">95%+</span><span class="label">Test coverage</span></div>
</div>

All before raising capital to build v1 with the composability branch.

---

## Business Model

**Protocol fee** on automated transaction volume.
Every automated action becomes revenue.

- Payments
- DCA
- Treasury operations
- Yield routing
- Agent spending

> We scale with transaction flow, not custody risk.

---

## Why Now

The next wave of digital money is **capital automation**.
Every dollar moving on-chain will eventually need:

- Rules
- Policies
- Automation

Tributary becomes the **execution layer** underneath that activity.

---

## Market Landscape

The market proved demand for financial automation. Solana is missing a non-custodial layer.

| Company            | Chain                | What they automate                      |
| ------------------ | -------------------- | --------------------------------------- |
| **DeFi Saver**     | Ethereum/EVM            | Leverage, liquidation protection, yield |
| **Summer.fi**      | Ethereum/EVM            | CDP, borrowing, leverage automation     |
| **Instadapp**      | Ethereum/EVM            | Smart accounts, DeFi automation         |
| **Enzyme Finance** | Ethereum/EVM            | Portfolio & vault management            |

DeFi Saver and Summer.fi are the closest analogues. **No one operates on Solana.**

---

## The Difference

Most competitors automate **actions**. Tributary automates **money**.

Using one underlying primitive:

> `WHEN` → `PULL` → `ROUTE`

Tributary can ...

- Pay a subscription
- DCA into an asset
- Stake idle capital
- Rebalance a treasury
- Fund an AI agent
- Route capital across protocols
- ...

---

## Team

### Fabian Schuh, Dr.-Ing

- web3 veteran with **10+ years** building in crypto
- BitShares, Steemit, MakerDAO, exbet.io, Mash.fun, repo.trade
- Successfully built products across all of web3
- **4 prior exits**
- Built the entire Tributary stack solo
- Live protocol **before** funding
- [github/@xeroc](https://github.com/xeroc) ⋅ [twitter/@xer0c](https://x.com/xer0c) ⋅ [linkedin](https://www.linkedin.com/in/fabian-schuh-phd-217b55101/)

Unique founder-market fit for this category.

---

<!-- _class: lead -->
<!-- _paginate: false -->

# The Vision

**Today:** Recurring and programmable payments

**Tomorrow:** Automated capital allocation

**Long term:** The operating system for on-chain money

> Stablecoins made money internet-native.
> Tributary makes it programmable.
