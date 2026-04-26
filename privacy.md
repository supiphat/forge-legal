# Privacy Policy — Forge

**Last updated:** 2026-04-26
**Effective:** [Effective date — set to the day you make the policy live]

This Privacy Policy describes how Forge ("the App", "we", "us") handles information when you use our iOS application. We've built Forge to do as little as possible with your data. Read on to see what that means.

---

## TL;DR

- We don't collect your name, email address, phone number, or location.
- We don't track you across other apps or websites. There are no advertising or analytics SDKs.
- Your workout data lives in your private iCloud container (managed by Apple) and on your device. We do not have access to it.
- When you use AI features, we send anonymized snapshots of your workout data to our backend server, which forwards them to a third-party AI provider (Anthropic and/or OpenAI). These snapshots contain training inputs only — no identity attached.
- Subscriptions are processed by Apple via StoreKit. We never see your payment details.

---

## 1. Information We Process

### 1.1 On Your Device (Never Sent to Us)

- **Workout data:** exercises, sets, reps, weights, dates, rest timer state, personal records, streak count.
- **Program data:** training program structure, progress through weeks, exercise modifications.
- **Onboarding inputs:** training goal, experience level, available equipment, training days per week, and any injuries you report.
- **Check-in inputs:** weekly fatigue and soreness scores, optional free-text notes.
- **Health data (HealthKit):** if you grant HealthKit permission, the App writes a workout record to your Apple Health on session completion. Forge does not read other Health data in v1.0.

All of the above is stored in [SwiftData](https://developer.apple.com/documentation/swiftdata) on your device and synchronized to your private [iCloud](https://www.apple.com/icloud/) container via Apple's CloudKit. We have no access to your iCloud container — it's managed by Apple and accessible only to you and to apps you authorize.

### 1.2 Sent to Our Backend (Supabase)

When you use AI-powered features, the following is sent to our backend:

- **Anonymous user identifier:** a UUID generated per app install. Not linked to your name, email, Apple ID, or any identity. Used to enforce per-install rate limits.
- **AI request payloads:** a snapshot of the workout context relevant to the request. Specifically:
  - **Program generation** (onboarding): your goal, experience level, equipment string, training days, and injuries list.
  - **Weekly check-in adaptation:** your fatigue score, soreness selections, optional notes, last week's performance summary, and the upcoming week's program targets.
  - **In-workout coach card:** the exercise name, current weight, suggested weight, and consecutive failure count for the upcoming set.

We do not store the request payload server-side after the AI response is returned. Rate-limit usage rows are retained for 30 days and contain only `(user_id, endpoint, timestamp)` — no payload content.

### 1.3 Sent to Third-Party AI Providers

The AI request payloads above are forwarded from our backend to one or both of:

- **Anthropic** ([Claude](https://www.anthropic.com/privacy))
- **OpenAI** ([GPT](https://openai.com/policies/privacy-policy))

These providers process the request to generate a response and may retain the request for a period defined by their own privacy policies and our enterprise data-processing agreements. We do not pass identifying information (your name, email, Apple ID, anonymous Forge user ID, etc.) to these providers — only the workout context.

### 1.4 Subscription Information (Processed by Apple)

When you subscribe, payment is processed by [Apple](https://www.apple.com/legal/privacy/) via StoreKit. Apple shares with us only the information needed to validate your subscription:

- A StoreKit transaction identifier.
- Subscription tier (Pro or Elite) and expiration date.

We never see your name, billing address, card number, or Apple ID.

### 1.5 What We Do NOT Process

- Name, email, phone number, or any contact information.
- Location.
- Photos, contacts, microphone, or camera data.
- Web browsing or search history.
- Advertising identifiers (IDFA).
- Diagnostics or crash reports beyond what Apple provides via opt-in App Store analytics.

---

## 2. Why We Process This Information

- **To run the App:** workout logging, progressive overload calculations, progress views, streak tracking — all of this happens on your device.
- **To provide AI-powered features:** if you have a Pro or Elite subscription and use AI features, we send the minimum context needed to generate a useful response.
- **To enforce fair usage:** the anonymous user ID is used solely to rate-limit AI calls per install, preventing abuse.
- **To validate subscriptions:** we check StoreKit entitlements to determine your access tier.

We do not process your information for advertising, profiling, sale, or analytics.

---

## 3. Data Sharing

We do not sell, rent, or trade your information to anyone. We share information only:

- **With Apple,** as part of using StoreKit, CloudKit, and HealthKit. Apple's privacy policy applies to those services.
- **With our AI providers** (Anthropic and/or OpenAI), as described in §1.3.
- **With law enforcement,** only if compelled by legally binding process and only to the extent required.

We do not embed advertising SDKs, analytics SDKs, or third-party trackers.

---

## 4. Data Retention

- **On-device data** is retained as long as the App is installed. Uninstalling the App removes all on-device data.
- **iCloud data** is retained per your iCloud account settings. You can delete it at any time via Settings → Apple ID → iCloud → Manage Storage → Forge.
- **Server-side data** (rate-limit usage rows): retained for 30 days, then automatically deleted.
- **AI provider data:** retained per the provider's policy.

You can request deletion of any anonymous server-side records by emailing the contact below — provide the anonymous user ID found in Settings → About → Diagnostic Info (in-app feature; if not present, we can identify you only by transaction-time-window correlations).

---

## 5. Children's Privacy

Forge is rated 4+ and contains no objectionable content, but it is not directed at children under 13. We do not knowingly collect information from children. If you believe a child has used the App and you wish to delete any associated anonymous records, contact us via the support email.

---

## 6. International Users

Our backend is hosted in [Sydney, Australia (Supabase Oceania region)]. AI provider regions vary by provider. By using the App, you consent to processing of the limited data described above outside your country of residence.

---

## 7. Security

- All data in transit between the App, our backend, and AI providers is transmitted over TLS.
- Server-side data is protected by Supabase's row-level security; no query can return another user's rows.
- API keys for AI providers are held server-side and never exposed to the App.

No system is perfectly secure. If you discover a vulnerability, please report it to the security contact below.

---

## 8. Your Rights

Depending on your jurisdiction (GDPR, CCPA, etc.), you may have rights including:

- **Access** — request a copy of any data we hold linked to your anonymous user ID.
- **Deletion** — request deletion of server-side records.
- **Withdraw consent** — uninstall the App at any time. AI calls stop immediately.

To exercise these rights, contact `[support@example.com]`.

---

## 9. Changes to This Policy

We may update this Policy. Material changes will be reflected in the App via an update notice or in the App Store description. The "Last updated" date at the top of this document is authoritative.

---

## 10. Contact

- **Support / privacy requests:** `[support@example.com]`
- **Security disclosures:** `[security@example.com]`
- **Maintainer:** `[Your name or company name, address]`

---

*This is a template. Replace bracketed placeholders, have a lawyer review for your jurisdiction, and host at the URL listed in your App Store Connect submission.*
