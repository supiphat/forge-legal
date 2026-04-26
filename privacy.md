# Privacy Policy — Forge

**Last updated:** 2026-04-26
**Effective:** 2026-04-26

This Privacy Policy describes how Forge ("the App", "we", "us") handles information when you use our iOS application. Forge is operated as a sole proprietorship by Supiphat Kasetrsuwan, located in Thailand. We've built the App to do as little as possible with your data. Read on to see what that means.

---

## TL;DR

- We don't collect your name, email address, phone number, or location.
- We don't track you across other apps or websites. There are no advertising or analytics SDKs.
- Your workout data lives in your private iCloud container (managed by Apple) and on your device. We do not have access to it.
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
- **Health data (HealthKit):** if you grant HealthKit permission, the App writes a workout record to your Apple Health on session completion. Forge does not read other Health data in v1.0.

All of the above is stored in [SwiftData](https://developer.apple.com/documentation/swiftdata) on your device and synchronized to your private [iCloud](https://www.apple.com/icloud/) container via Apple's CloudKit. We have no access to your iCloud container — it's managed by Apple and accessible only to you and to apps you authorize.

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

- **Anthropic** ([Claude](https://www.anthropic.com/privacy)) — processes payloads in the United States.
- **OpenAI** ([GPT](https://openai.com/policies/privacy-policy)) — processes payloads in the United States.

These providers process the request to generate a response and may retain the request for a period defined by their own privacy policies and our enterprise data-processing agreements. We do not pass identifying information (your name, email, Apple ID, anonymous Forge user ID, etc.) to these providers — only the workout context.

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

- **With Apple,** as part of using StoreKit, CloudKit, and HealthKit. Apple's privacy policy applies to those services.
- **With our AI providers** (Anthropic and/or OpenAI), as described in §2.3.
- **With law enforcement,** only if compelled by legally binding process under Thai law and only to the extent required.

We do not embed advertising SDKs, analytics SDKs, or third-party trackers.

---

## 7. Data Retention

- **On-device data** is retained as long as the App is installed. Uninstalling the App removes all on-device data.
- **iCloud data** is retained per your iCloud account settings. You can delete it at any time via Settings → Apple ID → iCloud → Manage Storage → Forge.
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

---

*This Policy is provided in English. A Thai-language version may be made available for users in Thailand on request and prior to widespread Thai-market marketing.*
