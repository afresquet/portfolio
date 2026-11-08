+++
title = "Alvaro Fresquet"
template = "index.html"

[extra]
links = [
  { label = "work@afresquet.com", url = "mailto:work@afresquet.com" },
  { label = "github.com/afresquet", url = "https://github.com/afresquet" },
  { label = "linkedin.com/in/afresquet", url = "https://linkedin.com/in/afresquet" },
]

[[extra.work]]
when = "2025 – now"
title = "Senior Software Engineer"
org = "SITA"
note = "The IT provider to the air transport industry. Contract through PSD Contracts."
body = """
I work on **eWAS+**, which replaces eWAS Pilot, an iPad Electronic Flight Bag weather app used by pilots at airlines including Etihad, Singapore Airlines and Air France. The team rewrote the Objective-C app, by then more than twelve years old, in TypeScript, Angular and Capacitor and brought it to feature parity for its App Store release.
"""

[[extra.work]]
when = "2024 – 2025"
title = "Software & Embedded Engineer"
org = "Jorge A. Fresquet e Hijo S.R.L."
note = "My family's fruit farm in Argentina. A rewrite of the system I built there in 2017, below."
body = """
I rewrote the harvest-tracking system end to end in Rust: Embassy firmware on ESP32 weigh stations (RFID reader, load cell, display), a Tokio/Axum server on a Raspberry Pi running NixOS, and a Dioxus UI, all in one Cargo workspace sharing a domain crate. The redesigned data model removed the slowdown that had forced a database wipe every season in the first version. I operate it from Spain over Tailscale with declarative NixOS deploys. It's in production.
"""

[[extra.work]]
when = "2023 – 2024"
title = "Backend Engineer, Rust"
org = "Rithum"
note = "E-commerce and supply-chain network connecting retailers and suppliers."
body = """
On a three-engineer team I built a Rust AWS Lambda batch job that generates logistics contracts between suppliers and retailers, about 100k queued records per run. I parallelised record processing with Tokio, moved to bulk SQL inserts, and we added structured observability with `tracing` so failures in long runs were diagnosable.
"""

[[extra.work]]
when = "2020 – 2023"
title = "Software Engineer"
org = "consultancy client work"
note = "Through Xebia, Business Insights, AXPE and Everis. TypeScript throughout."
body = """
- **Kesko** (Finnish retail group): React e-commerce frontend on Azure.
- **Wejo** (connected-vehicle data): a real-time road-traffic visualisation backend-for-frontend with WebSockets and SQL, on GCP.
- **AXA**: Node.js/Fastify integration middleware on AWS, with testing, structured logging and monitoring.
- **Stradivarius** (Inditex): React e-commerce features, code splitting and lazy loading.
- **An EU institution**: a React/Redux tool for editing and annotating PDF documents.
"""

[[extra.work]]
when = "2017 – 2019"
title = "Software Developer"
org = "Jorge A. Fresquet e Hijo S.R.L."
note = "The family farm again. My first project."
body = """
I built the farm's first digital harvest-tracking system: RFID check-in, weighing and label printing for about 100 pickers and 30,000 crates a season, replacing paper records that were prone to errors and fraud. Weigh-station queues after crew moves went from about an hour to about five minutes. Weigh-ins feed payroll directly, and pickers see their own numbers during the day, which is what made them trust it. TypeScript, React, Node.js, MongoDB, WebSockets, and ESP32 firmware on the Arduino framework.
"""

[[extra.projects]]
name = "Systems from scratch, in Rust"
url = "https://github.com/afresquet?tab=repositories&q=codecrafters"
body = """
Git, Redis, a DNS server, an HTTP server, a BitTorrent client, a shell, grep and an interpreter, each implemented from the protocol or spec up (Codecrafters). An [NES emulator](https://github.com/afresquet/nes-emulator) is in progress.
"""

[[extra.projects]]
name = "kh2fm-randomizer"
url = "https://github.com/afresquet/kh2fm-randomizer"
meta = "TypeScript · 2020 – 2021"
body = """
A randomizer for *Kingdom Hearts II Final Mix*: it shuffles rewards and locations under soft-lock-prevention rules and generates patches for the PS2 emulator. Peaked at about 12k monthly users. Unmaintained now; another project superseded it.
"""

[[extra.projects]]
name = "typepipe"
url = "https://github.com/afresquet/typepipe"
meta = "TypeScript · npm"
body = """
A small library for type-safe pipelines with a shared context. Mostly an exercise in TypeScript's type system.
"""

[[extra.projects]]
name = "dotfiles"
url = "https://github.com/afresquet/dotfiles"
meta = "Nix"
body = """
The NixOS flake behind my machines and my homelab.
"""

[[extra.skills]]
group = "Rust"
items = "Tokio, Axum, Embassy, Dioxus, tracing, async, Cargo workspaces"

[[extra.skills]]
group = "Embedded"
items = "ESP32, Raspberry Pi, Arduino framework, RFID, load cells, displays"

[[extra.skills]]
group = "Systems"
items = "Linux, Nix/NixOS, AWS Lambda, GCP, Azure, SQL, MongoDB, Docker, Git, CI/CD"

[[extra.skills]]
group = "TypeScript"
items = "Node.js, Fastify, Angular, React, Capacitor, MapLibre, Web Workers, WebSockets"

[[extra.skills]]
group = "Also"
items = "Swift, Go"

[[extra.skills]]
group = "Languages"
items = "Spanish (native), English (bilingual)"

+++

I'm a self-taught software engineer. I've been shipping production software since 2017, mostly in TypeScript, and more and more in Rust: a year of backend Rust at Rithum, and a harvest-tracking system on my family's fruit farm in Argentina that I rewrote end to end in Rust, from Embassy firmware on ESP32s to a Tokio/Axum server and a Dioxus UI. Rust is where I want to spend my time.
