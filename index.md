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

@media screen {
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
  .col-title.good {
    background: linear-gradient(135deg, #9945ff 0%, #14f195 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
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
}

@media print {
  h1, h2, h3, h4, h5, h6 {
    font-weight: 700;
    margin: 0;
    padding: 0;
    letter-spacing: -0.02em;
    background: none;
    color: #9945ff;
  }
  .footnote {
    display: none;
  }
  script {
    display: none;
  }
  th {
    border-bottom: 2px solid #9945ff;
    padding: 10px 12px;
    text-align: left;
    font-size: 16px;
  }
  .col-title.good {
    color: #9945ff;
  }
  .metric .num {
    font-size: 32px;
    font-weight: 700;
    color: #9945ff;
    display: block;
  }
  .flow-step {
    color: #9945ff !important;
    -webkit-text-fill-color: #9945ff !important;
  }
  .flow-step.good {
    color: #0a8a5f !important;
    -webkit-text-fill-color: #0a8a5f !important;
  }
  .flow-arrow {
    color: #14f195 !important;
  }
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
  font-size: 34px;
  padding-bottom: 16px;
}

h2::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: 4px;
  width: 256px;
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

/* Flow diagram */
.flow {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 18px;
  margin: 28px 0 24px;
}
.flow-step {
  font-family: var(--font-mono);
  font-size: 28px;
  font-weight: 700;
  padding: 14px 26px;
  border: 2px solid #9945ff;
  border-radius: 10px;
  background: rgba(153, 69, 255, 0.06);
  color: #9945ff;
  -webkit-text-fill-color: #9945ff;
}
.flow-step.good {
  border-color: #14f195;
  background: rgba(20, 241, 149, 0.10);
  color: #0a8a5f;
  -webkit-text-fill-color: #0a8a5f;
}
.flow-arrow {
  font-size: 34px;
  font-weight: 700;
  color: #14f195;
  -webkit-text-fill-color: #14f195;
}

/* Headshot */
.headshot {
  float: right;
  width: 150px;
  height: 150px;
  border-radius: 50%;
  border: 3px solid #9945ff;
  margin: 96px 0 16px 28px;
  object-fit: cover;
  background: #eee;
}

/* Back-cover contact block */
.contact {
  margin-top: 24px;
  font-size: 24px;
  line-height: 2;
}
.contact a {
  color: #9945ff;
  text-decoration: none;
  border-bottom: 1px dotted #9945ff;
}

.footnote a {
  color: #888;
}

.footnote {
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

<div>
  <a class="footnote" href="./index.md">View markdown source</a>
</div>

---

## Money On-Chain Is Still Moved by Hand

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

## Custody Is the Problem, Not the Solution

Most companies automate money by **taking custody**.

Instead of holding your funds, Tributary uses Solana-native delegation:

> Approve once. Automate forever. Keep your keys.

---

## An Automation Layer Native to Solana

One primitive powers every money motion:

<div class="flow">
<span class="flow-step">WHEN</span>
<span class="flow-arrow">&rarr;</span>
<span class="flow-step">PULL</span>
<span class="flow-arrow">&rarr;</span>
<span class="flow-step good">ROUTE</span>
</div>

**Opportunities**: Pay a subscription &middot; DCA into an asset &middot; Rebalance a treasury &middot; stake idle capital &middot; Fund an AI agent &middot; route yield across protocols &middot; many more

> Define rules once. The protocol executes them. You keep your keys.

---

## Non-Custodial Infrastructure Beats Custodial Apps

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

## Live Protocol, Real Volume, Zero Marketing Spend

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

## A Protocol Fee on Every Automated Transaction

**Protocol fee** on automated transaction volume.
Every automated action becomes revenue.

- Payments
- DCA
- Treasury operations
- Yield routing
- Agent spending

> We scale with transaction flow, not custody risk.

---

## Capital Automation Is the Next Stablecoin Primitive

The next wave of digital money is **capital automation**.
Every dollar moving on-chain will eventually need:

- Rules
- Policies
- Automation

Tributary becomes the **execution layer** underneath that activity.

---

## A $750M Market With No Solana Incumbent

**Bottom-up market sizing** (protocol fee revenue @ 10 bps):

<div class="metrics">
<div class="metric"><span class="num">$750M</span><span class="label">TAM &mdash; on-chain automation fees</span></div>
<div class="metric"><span class="num">$112M</span><span class="label">SAM &mdash; Solana's share (~15%)</span></div>
<div class="metric"><span class="num">$3.4M</span><span class="label">SOM &mdash; 3-yr capture (3% of SAM)</span></div>
</div>

<em>Assumptions: $15T global stablecoin settlement/yr (Visa, Chainalysis 2024) &times; 5% automatable &times; 10 bps fee; Solana ~15% of stablecoin flow.</em>

| Company            | Chain        | What they automate                      |
| ------------------ | ------------ | --------------------------------------- |
| **DeFi Saver**     | Ethereum/EVM | Leverage, liquidation protection, yield |
| **Summer.fi**      | Ethereum/EVM | CDP, borrowing, leverage automation     |
| **Instadapp**      | Ethereum/EVM | Smart accounts, DeFi automation         |
| **Enzyme Finance** | Ethereum/EVM | Portfolio & vault management            |

**No one operates on Solana.**

---

## Composable by Default: One Primitive Reaches Every Protocol

Most competitors automate **a single action inside a walled garden**.
Tributary automates **money across the open chain**.

The `ROUTE` step is composable &mdash; the same primitive reaches:

- **Payments** to any merchant or subscriber
- **DCA** via Jupiter and major DEXs
- **Yield** into Kamino, Drift, marginfi
- **Treasury** rebalancing across any token pair
- **Agents** funding any program-controlled wallet

One integration unlocks every money motion on Solana.

---

## A Decade Building Crypto-Native Infrastructure

<img class="headshot" src="https://github.com/xeroc.png" alt="Fabian Schuh" />

### Fabian Schuh, Dr.-Ing &mdash; Founder &amp; CEO

- web3 veteran with **10+ years** building in crypto
- BitShares, Steemit, MakerDAO, Exbet.io, Mash.fun, Repo.trade
- Successfully built products across all of web3
- **4 prior exits**
- Built the entire Tributary stack solo
- Live protocol **before** funding
- [github/@xeroc](https://github.com/xeroc) &middot; [twitter/@xer0c](https://x.com/xer0c) &middot; [linkedin](https://www.linkedin.com/in/fabian-schuh-phd-217b55101/)

Unique founder-market fit for this category.

---

## Raising $250k to Ship V1 Composability

**Round:** $250k pre-seed &nbsp;&middot;&nbsp; **Runway:** 18 months

Capital deployed to ship the composable automation branch:

- **Engineering (60%)** &mdash; Ship v1 composable <tt>WHEN &rarr; PULL &rarr; ROUTE</tt> protocol
- **Security &amp; audits (15%)** &mdash; Independent audit of the composable branch
- **BD &amp; flagship integrations (15%)** &mdash; Onboard 3+ marquee partners
- **Infra &amp; operations (10%)** &mdash; Mainnet reliability, keeper network

Milestones unlocked in 12 months:

> v1 live &middot; 5+ integrations &middot; $100k+ monthly volume &middot; category-defining protocol

---

<!-- _class: lead -->
<!-- _paginate: false -->

# The Vision

**Today:** Recurring and programmable payments

**Tomorrow:** Automated capital allocation

**Long term:** The operating system for on-chain money

> Stablecoins made money internet-native.
> Tributary makes it programmable.

---

<!-- _class: lead -->
<!-- _paginate: false -->

# Let's Build the Automation Layer for On-Chain Money

**Fabian Schuh, Dr.-Ing** &mdash; Founder &amp; CEO, Tributary

[fabian@tributary.so](mailto:fabian@tributary.so)&middot; [github/@xeroc](https://github.com/xeroc) &middot; [twitter/@xer0c](https://x.com/xer0c) &middot; [linkedin](https://www.linkedin.com/in/fabian-schuh-phd-217b55101/)
