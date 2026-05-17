# Privacy Policy — Forge

**Last updated:** 2026-05-17
**Effective:** 2026-05-17

This Privacy Policy describes how Forge ("the App", "we", "us") handles information when you use our iOS application. Forge is operated as a sole proprietorship by Supiphat Kasetrsuwan, located in Thailand. We've built the App to do as little as possible with your data. Read on to see what that means.

---

## Our Privacy Principles

Before the legal detail below, five principles that shape every decision we make about your data:

1. **Your workouts stay on your device.** Sets, reps, weights, programs, check-ins — all stored locally in SwiftData on your iPhone. v1.0 does not sync across devices. We have no copy.
2. **AI calls are anonymized.** When you use AI features, we send the workout context the model needs and nothing else. No name, no email, no Apple ID, no device fingerprint. Just an anonymous per-install identifier so we can rate-limit abuse.
3. **We name every processor.** Anthropic, OpenAI, Apple, Supabase — listed below by name, location, and what they receive. No mystery third parties.
4. **You can export everything or delete everything, in two taps.** Settings → Privacy → Export My Data (JSON) or Delete My Data (irreversible). No emailing us, no waiting weeks.
5. **No advertising, no analytics, no tracking.** No SDKs, no trackers, no profiles built on you for sale. The App earns its keep from subscriptions, not from your data.

---

## TL;DR

- We don't collect your name, email address, phone number, or location.
- We don't track you across other apps or websites. There are no advertising or analytics SDKs.
- Your workout data lives on your device. We do not have access to it, and v1.0 does not sync across devices.
- When you use AI features, we send anonymized snapshots of your workout data to our backend server, which forwards them to a third-party AI provider (Anthropic and/or OpenAI). These snapshots contain training inputs only — no identity attached.
- Subscriptions are processed by Apple via StoreKit. We never see your payment details.

---

## 1. Data Controller

The data controller responsible for processing your personal data is:

- **Name:** Supiphat Kasetrsuwan (sole proprietor)
- **Country of operation:** Thailand
- **Contact email:** supiphatk17@gmail.com

For users in Thailand, this notice is provided in accordance with the **Personal Data Protection Act B.E. 2562 (2019)** ("PDPA"). For users in other jurisdictions, equivalent rights under your local data-protection law apply (see §9).

---

## 2. Information We Process

### 2.1 On Your Device (Never Sent to Us)

- **Workout data:** exercises, sets, reps, weights, dates, rest timer state, personal records, streak count.
- **Program data:** training program structure, progress through weeks, exercise modifications.
- **Onboarding inputs:** training goal, experience level, available equipment, training days per week, and any injuries you report.
- **Check-in inputs:** weekly fatigue and soreness scores, optional free-text notes.
- **Health data (HealthKit):** if you grant HealthKit permission, the App (a) writes a workout record to your Apple Health on session completion, and (b) reads your most recent body-mass entry to scale starting weights and to compute volume for bodyweight exercises. The App does not read any other Health categories (HRV, sleep, heart rate, nutrition, etc.) in v1.0.

All of the above is stored in [SwiftData](https://developer.apple.com/documentation/swiftdata) on your device. **Forge v1.0 does not synchronize your workout data across devices** — it lives on the device where you installed it. Cross-device sync may be introduced in a future update; this Policy will be updated before that happens.

### 2.2 Sent to Our Backend (Supabase)

When you use AI-powered features, the following is sent to our backend, hosted on Supabase in the Oceania (Sydney, Australia) region:

- **Anonymous user identifier:** a UUID generated per app install. Not linked to your name, email, Apple ID, or any other identity. Used to enforce per-install rate limits.
- **AI request payloads:** a snapshot of the workout context relevant to the request. Specifically:
  - **Program generation** (onboarding): your goal, experience level, equipment string, training days, and injuries list.
  - **Weekly check-in adaptation:** your fatigue score, soreness selections, optional notes, last week's performance summary, and the upcoming week's program targets.
  - **In-workout coach card:** the exercise name, current weight, suggested weight, and consecutive failure count for the upcoming set.

We do not store the request payload server-side after the AI response is returned. Rate-limit usage rows are retained for 30 days and contain only `(user_id, endpoint, timestamp)` — no payload content.

### 2.3 Sent to Third-Party AI Providers

The AI request payloads above are forwarded from our backend to one or both of:

- **Anthropic PBC** ([Claude](https://www.anthropic.com/privacy)) — processes payloads in the United States. Per Anthropic's published API policy, prompt and completion content is retained for up to **30 days** for trust-and-safety review and is **not used to train Anthropic's models**.
- **OpenAI OpCo LLC** ([GPT](https://openai.com/policies/privacy-policy)) — processes payloads in the United States. Per OpenAI's published API policy, API request and response content is retained for up to **30 days** for abuse monitoring and is **not used to train OpenAI's models** by default.

We do not pass identifying information (your name, email, Apple ID, anonymous Forge user ID, etc.) to these providers — only the workout context relevant to the request. The forwarded payload contains no values that would, on their own, identify you to either provider.

If Anthropic or OpenAI updates their published retention or training policies, we will update this Policy to reflect the change. If you are concerned about US-based processing of your data, you can avoid all AI calls by using only the free tier of the App (workout logging, deterministic progressive overload, streaks, volume/PR tracking, template programs).

### 2.4 Subscription Information (Processed by Apple)

When you subscribe, payment is processed by [Apple](https://www.apple.com/legal/privacy/) via StoreKit. Apple shares with us only the information needed to validate your subscription:

- A StoreKit transaction identifier.
- Subscription tier (Pro) and expiration date.

We never see your name, billing address, card number, or Apple ID.

### 2.5 What We Do NOT Process

- Name, email, phone number, or any contact information.
- Location.
- Photos, contacts, microphone, or camera data.
- Web browsing or search history.
- Advertising identifiers (IDFA).
- Diagnostics or crash reports beyond what Apple provides via opt-in App Store analytics.

---

## 3. Lawful Basis for Processing (PDPA §24)

Under PDPA §24, we rely on the following lawful bases:

| Processing activity | Lawful basis |
|---------------------|--------------|
| Generating AI programs and adaptations from your workout context | §24(3) **performance of a contract** between you and us — necessary to deliver the paid features you subscribed to |
| Logging anonymous rate-limit rows to prevent automated abuse | §24(5) **legitimate interest** — protecting the integrity and cost of the AI service |
| Processing StoreKit subscription receipts to grant tier access | §24(3) **performance of a contract** |
| Writing workout records to your Apple Health | §24(1) **consent** — you grant HealthKit permission via the iOS system prompt |

We do not rely on consent for processing of the anonymous data described in §2.2 or §2.3 because it is not "personal data" under PDPA §6 — there is no identifiable natural person attached to the anonymous user ID.

---

## 4. International Data Transfer (PDPA §28–29)

Your data leaves Thailand in two ways:

- **Backend storage** in Supabase Oceania (Sydney, Australia). Australia has a data-protection regime substantially similar to PDPA.
- **AI inference** at Anthropic and/or OpenAI in the United States.

For these transfers we rely on:

- The recipients' published privacy programs and data-processing agreements.
- The fact that the transferred payload is **anonymous workout context only** — not directly identifying information about you.

If the PDPC issues binding adequacy determinations or model contractual clauses applicable to these transfers, we will update our agreements accordingly.

---

## 5. Why We Process This Information

- **To run the App:** workout logging, progressive overload calculations, progress views, streak tracking — all of this happens on your device.
- **To provide AI-powered features:** if you have a Pro subscription and use AI features, we send the minimum context needed to generate a useful response.
- **To enforce fair usage:** the anonymous user ID is used solely to rate-limit AI calls per install, preventing abuse.
- **To validate subscriptions:** we check StoreKit entitlements to determine your access tier.

We do not process your information for advertising, profiling, sale, or analytics.

---

## 6. Data Sharing

We do not sell, rent, or trade your information to anyone. We share information only:

- **With Apple,** as part of using StoreKit and HealthKit. Apple's privacy policy applies to those services.
- **With our AI providers** (Anthropic and/or OpenAI), as described in §2.3.
- **With law enforcement,** only if compelled by legally binding process under Thai law and only to the extent required.

We do not embed advertising SDKs, analytics SDKs, or third-party trackers.

---

## 7. Data Retention

- **On-device data** is retained as long as the App is installed. Uninstalling the App removes all on-device data. Because v1.0 does not sync, no copy of your workout data exists outside the device.
- **Server-side rate-limit rows:** retained for 30 days, then automatically deleted.
- **AI provider data:** retained per the provider's policy.

To request deletion of any anonymous server-side records, email supiphatk17@gmail.com with your anonymous user ID.

---

## 8. Security

- All data in transit between the App, our backend, and AI providers is transmitted over TLS.
- Server-side data is protected by Supabase's row-level security; no query can return another user's rows.
- API keys for AI providers are held server-side and never exposed to the App.
- In the event of a personal-data breach affecting Thai data subjects, we will notify the **Office of the Personal Data Protection Committee (PDPC)** within 72 hours of becoming aware, in accordance with PDPA §37, and will notify affected users where the breach poses a high risk.

No system is perfectly secure. If you discover a vulnerability, please report it to supiphatk17@gmail.com.

---

## 9. Your Rights

### 9.1 Under the Thai PDPA

If you are a data subject in Thailand, you have the following rights, exercisable by emailing supiphatk17@gmail.com:

- **Access (PDPA §30)** — request a copy of any data we hold linked to your anonymous user ID.
- **Rectification (§35)** — correct inaccurate data.
- **Erasure (§33)** — request deletion of personal data we hold.
- **Restriction (§34)** — request that we limit processing.
- **Objection (§32)** — object to processing based on legitimate interest.
- **Data portability (§31)** — receive your data in a structured, machine-readable format.
- **Withdraw consent (§19)** — for any processing based on consent. Uninstalling the App revokes HealthKit access immediately.
- **Lodge a complaint** — with the **Office of the Personal Data Protection Committee (PDPC)**, the Thai data-protection regulator. Contact details: pdpc.or.th.

### 9.2 Under Other Jurisdictions

If you are in the European Economic Area, the United Kingdom, California, Australia, or any other jurisdiction with comparable data-protection law, you have equivalent rights under your local regime (GDPR Articles 15–22, UK GDPR, CCPA §1798.100 et seq., Privacy Act 1988 (Cth), etc.). Contact us at the email above to exercise them.

---

## 10. Children's Privacy

The App is rated 4+ on the App Store and contains no objectionable content, but it is not directed at children under 13 (or the equivalent threshold in your jurisdiction). We do not knowingly collect information from children. If you believe a child has used the App and you wish to delete any associated anonymous records, contact supiphatk17@gmail.com.

---

## 11. Changes to This Policy

We may update this Policy. Material changes will be reflected in the App via an update notice and on the App Store. The "Last updated" date at the top of this document is authoritative.

---

## 12. Contact

- **Privacy / data-rights requests:** supiphatk17@gmail.com
- **Security disclosures:** supiphatk17@gmail.com
- **Data Controller:** Supiphat Kasetrsuwan, Thailand
- **Data Protection Officer (DPO):** Supiphat Kasetrsuwan, supiphatk17@gmail.com (acting DPO under PDPA §41 / GDPR Art 37–39)

We respond to verified data-subject requests within **30 days** of receipt (per PDPA §30, GDPR Art 12(3), and equivalent timelines in CPRA / Privacy Act 1988 / POPIA).

---

## 13. Region-Specific Privacy Rights

The provisions in this §13 are **in addition to** §§1–12 and grant additional rights to users in specific regions. Nothing here reduces rights granted under §§1–12 or under the regional law itself.

### 13.1 EEA, United Kingdom, and Switzerland — GDPR / UK GDPR

If you are in the EEA, the United Kingdom, or Switzerland, the **General Data Protection Regulation (Regulation (EU) 2016/679)** or its UK / Swiss equivalent governs our processing of your personal data.

**Data Controller.** Supiphat Kasetrsuwan, Thailand. Acting DPO contact: supiphatk17@gmail.com.

**EU/UK Representative.** Forge does not currently have a designated representative within the EU or UK under GDPR Art 27 / UK GDPR Art 27. Forge's processing falls within the limited scope exemption of GDPR Art 27(2)(a) because it is occasional, does not include large-scale processing of special-category data, and is unlikely to result in a risk to data subjects' rights — but we will appoint a representative if our EU/UK user base or processing volume grows to require it.

**Lawful bases for processing (Article 6).**

| Processing | Article 6 basis | Notes |
|---|---|---|
| Workout logging and overload calculations | 6(1)(b) — necessary for performance of the contract you entered when subscribing to the App | Core service |
| AI program generation, weekly check-in adaptation, in-workout coach cards | 6(1)(b) for paid users, or 6(1)(a) explicit consent at first AI use | Combined with Art 49 derogation for US transfers (see §13.1 below) |
| Rate-limit logging (anonymous user ID + endpoint + timestamp) | 6(1)(f) — legitimate interest (anti-abuse, fair-use enforcement) | Balancing test documented in our internal RoPA |
| HealthKit body-mass read | 6(1)(a) — your explicit consent given via the iOS HealthKit permission prompt | Consent can be withdrawn anytime in iOS Settings → Privacy & Security → Health |
| Subscription/payment data (handled by Apple) | 6(1)(b) — performance of contract | Apple is the merchant of record |

**Special-category data (Article 9).** Body-weight readings via HealthKit may, in combination with other health context, constitute "data concerning health." We process such data only on the basis of Art 9(2)(a) — your explicit consent, given through the iOS HealthKit permission prompt — and only for the in-app fitness purposes described in §5.

**Your rights under GDPR (Articles 15–22).**

- **Article 15** — right to access and obtain a copy of your data
- **Article 16** — right to rectification
- **Article 17** — right to erasure ("right to be forgotten")
- **Article 18** — right to restrict processing
- **Article 19** — notification of rectification, erasure, or restriction
- **Article 20** — right to data portability (machine-readable export; see in-app **Settings → Privacy → Export My Data**)
- **Article 21** — right to object to processing based on legitimate interest
- **Article 22** — right not to be subject to decisions based solely on automated processing, including profiling, which produce legal effects concerning you or similarly significantly affect you

**Automated decision-making (Article 22).** Forge's AI-generated training programs and adaptations are *suggestions*, not binding decisions. They do not produce legal effects, do not affect your access to goods or services, and they require your action (logging a set, accepting a weight increase) to take effect. Article 22 protections nonetheless apply: you have the right to obtain human review of any AI-generated suggestion, to contest it, and to express your view. You may exercise this right by emailing supiphatk17@gmail.com — we will manually review any disputed suggestion within 30 days.

**International data transfers (Article 49 derogation).** Where you use AI features, anonymized workout context is transferred to **Anthropic PBC** and **OpenAI OpCo LLC** in the **United States**. The United States has not been determined adequate by the EU Commission for the purposes of GDPR Art 45. We rely on:

- **Article 49(1)(a)** — your explicit consent, given at the paywall conversion point, after being informed of the transfer's nature, the recipient countries, the absence of an adequacy decision, and the possible risks; AND
- **Article 49(1)(b)** — the transfer is necessary for performance of the contract you entered when subscribing to Forge Pro.

We do not transfer special-category data internationally. We have reviewed Anthropic's and OpenAI's published data-processing agreements and confirmed their use of Standard Contractual Clauses (SCCs) for their own international transfers, providing belt-and-suspenders safeguards.

**Right to lodge a complaint (Article 77).** If you believe our processing violates GDPR or UK GDPR, you may lodge a complaint with:

- Your national supervisory authority (EEA member states)
- The **Information Commissioner's Office (ICO)** at `ico.org.uk` (UK users)
- The **Swiss Federal Data Protection and Information Commissioner (FDPIC)** at `edoeb.admin.ch` (Switzerland)
- The **Data Protection Commission (DPC) of Ireland** as our lead supervisory authority for EU one-stop-shop purposes, given Ireland is the EEA territory where we have material processing relationships (cross-border via Apple Ireland and Anthropic Ireland Limited)

**Retention.** On-device data: as long as you keep the App installed (you can erase anytime via Settings → Privacy → Delete My Data). Server-side rate-limit rows: 30 days. AI provider data: per provider policy (Anthropic deletes prompts after 30 days unless retained under enterprise terms; OpenAI policy as published).

**Breach notification (Article 33–34).** We will notify the competent supervisory authority within 72 hours of becoming aware of a personal-data breach affecting EEA/UK users, and notify affected users where the breach poses a high risk to their rights and freedoms.

### 13.2 California — CCPA / CPRA

If you are a California resident, the **California Consumer Privacy Act**, as amended by the **California Privacy Rights Act**, grants you the following rights:

**Categories of personal information collected (Civil Code §1798.140).**

| CCPA category | What we collect | Purpose |
|---|---|---|
| Identifiers | Anonymous Supabase user ID (UUID, per-install) | Rate-limit enforcement, AI request routing |
| Commercial information | Subscription status, transaction identifier | Apple is merchant of record; we receive entitlement status only |
| Internet or other electronic network activity | Rate-limit logs (endpoint, timestamp) | Anti-abuse |
| Geolocation | None collected | — |
| Sensory information | None collected | — |
| Professional information | None collected | — |
| Inferences | Training-related inferences derived from your inputs (e.g., experience level, training-day pattern) | AI personalization (Pro users) |
| Health & medical information (CMIA proxy) | Body-mass reading from HealthKit (if you grant permission); workout history | AI personalization, scaling calculations |
| Other categories | None | — |

**Categories of sources.** Directly from you via in-app input; via Apple HealthKit with your permission; via Apple StoreKit (subscription state only).

**Categories of third parties to whom we disclose.** Anthropic PBC (US) and OpenAI OpCo LLC (US) for AI inference; Supabase Inc. (Sydney, Australia) for backend hosting; Apple Inc. (US) for App Store and payment processing.

**Sale or sharing.** We do **not** sell personal information for monetary or other valuable consideration. We do **not** share personal information for cross-context behavioral advertising. No opt-out from "sale or sharing" is required, but if you wish to ensure no such disclosure, contact us.

**Your CCPA/CPRA rights.**

- **§1798.100** — Right to know what personal information we collect, how we use it, and to whom we disclose it (this section).
- **§1798.105** — Right to delete personal information we hold about you (in-app: Settings → Privacy → Delete My Data; or email).
- **§1798.106** — Right to correct inaccurate personal information.
- **§1798.110** — Right to access your specific personal information in a portable, machine-readable format (in-app: Export My Data; or email).
- **§1798.115** — Right to know categories of third parties to whom we disclosed.
- **§1798.120** — Right to opt out of sale or sharing (N/A — we do neither).
- **§1798.121** — Right to limit use of sensitive personal information (we will limit upon request).
- **§1798.135** — No "Do Not Sell or Share" link required (we don't sell or share).

**Verifying a request.** We verify you via your anonymous Supabase user ID, your subscription transaction ID (if applicable), and a confirmatory reply to the email address you contact us from.

**Response time.** 45 days from receipt; we will inform you in writing if we need an additional 45 days under §1798.130(a)(2).

**Non-discrimination (§1798.125).** We will not deny goods or services, charge different prices, or provide a different level of service in retaliation for exercising any right under CCPA/CPRA.

**Authorized agents.** You may designate an authorized agent to make a request on your behalf; we will verify the agent's authority before disclosing or deleting any information.

**California Shine the Light (Civil Code §1798.83).** We do not share personal information with third parties for those parties' direct-marketing purposes.

### 13.3 Other US states

If you reside in **Colorado, Connecticut, Delaware, Indiana, Iowa, Kentucky, Maryland, Minnesota, Montana, Nebraska, New Hampshire, New Jersey, Oregon, Rhode Island, Tennessee, Texas, Utah, Virginia**, or another US state with a comprehensive consumer-privacy statute, you have the rights granted by your state's law, which substantively mirror those in §13.2 above. Procedurally, exercise them through the in-app flows or email; we will apply the response timelines, exemptions, and appeal rights of your state's statute.

### 13.4 Australia — Privacy Act 1988

If you are an Australian resident, the **Privacy Act 1988 (Cth)** and the **Australian Privacy Principles (APPs)** govern our processing of your personal information. You have rights of access (APP 12) and correction (APP 13), exercisable through the in-app Export and Delete flows or email.

**Notifiable Data Breaches scheme.** We will notify the **Office of the Australian Information Commissioner (OAIC)** and affected individuals of any eligible data breach in compliance with Part IIIC of the Privacy Act.

**Complaints.** You may complain to the OAIC at `oaic.gov.au`.

### 13.5 New Zealand — Privacy Act 2020

If you are a New Zealand resident, the **Privacy Act 2020** governs our processing. You have rights of access (Information Privacy Principle 6) and correction (IPP 7). Complaints: the **Office of the Privacy Commissioner** at `privacy.org.nz`.

### 13.6 Canada — PIPEDA

If you are domiciled in a Canadian province or territory **other than Quebec** (we do not currently offer Forge in Quebec — see TERMS.md §19.4), the **Personal Information Protection and Electronic Documents Act (PIPEDA)** governs our processing of your personal information. You have rights of access and correction, exercisable via the in-app flows or email. Complaints: the **Office of the Privacy Commissioner of Canada** at `priv.gc.ca`.

### 13.7 Singapore — PDPA

If you are a Singapore resident, the **Personal Data Protection Act 2012** governs our processing. You have rights of access, correction, and withdrawal of consent. Complaints: the **Personal Data Protection Commission Singapore** at `pdpc.gov.sg`.

### 13.8 South Africa — POPIA

If you are a South African resident, the **Protection of Personal Information Act, 2013** governs our processing. You have rights of access, correction, deletion, and objection. Complaints: the **Information Regulator** at `inforegulator.org.za`.

### 13.9 Other regions

If you are domiciled in a region not specifically addressed here but covered by an applicable data-protection statute (e.g., Brazil LGPD, Japan APPI), the rights granted by that statute apply to your personal information regardless of any contrary provision in this Policy. Contact us to exercise them.

---

*This Policy is provided in English. A Thai-language version may be made available for users in Thailand on request and prior to widespread Thai-market marketing. Region-specific addenda in §13 reflect commitments to non-Thai users in territories Forge supports — see `docs/MARKETS.md` for the current territory list.*
