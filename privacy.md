# Privacy Policy — Forge

**Last updated:** 2026-10-08
**Effective:** 2026-10-08

This Privacy Policy describes how Forge ("the App", "we", "us") handles information when you use our iOS application. Forge is operated as a sole proprietorship by Supiphat Kasetrsuwan, located in Thailand. We've built the App to do as little as possible with your data. Read on to see what that means.

---

## Our Privacy Principles

Before the legal detail below, five principles that shape every decision we make about your data:

1. **Your workouts stay with you.** Sets, reps, weights, routines — stored on your iPhone and, if iCloud is on, in your own private iCloud database, which Apple runs. There is no Forge account and no sign-in. We have no copy.
2. **No AI.** Forge does not use AI. Nothing you log is sent to an AI provider or to any Forge server.
3. **We name every processor.** Apple, and Supabase (only for records left by Forge 1.x) — listed below by name, location, and what they hold. No mystery third parties.
4. **You can export everything or delete everything, yourself.** Profile → Export data (JSON) or Delete all data (irreversible). No emailing us, no waiting weeks.
5. **No advertising, no analytics, no tracking.** No advertising, analytics or tracking SDKs, no profiles built on you for sale. The App earns its keep from subscriptions, not from your data.

---

## TL;DR

- We don't collect your name, email address, phone number, or location.
- We don't track you across other apps or websites. There are no advertising or analytics SDKs.
- Your workout data lives on your device and, if iCloud is on, in your private iCloud database (Apple). We do not have access to it.
- Forge does not use AI. Nothing you log is sent to us; it goes only to the Apple services you turn on (iCloud, Apple Health).
- Our backend (Supabase) holds nothing about you unless you used the AI features of Forge 1.x; Delete all data removes those records.
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

### 2.1 On Your Device and in Your iCloud (Never Sent to Us)

- **Workout data:** exercises, sets, reps, weights and the unit you loaded them in, set types, reps in reserve, notes, dates, rest timer state, and personal records.
- **Routines and custom exercises:** the routines you build or pick from templates, their exercises and rules, and any exercises you create.
- **Learned equipment:** the loads you have logged per equipment type (and any you marked as not available), which the App uses to suggest weights you can actually load.
- **Profile and settings:** an optional display name, units (kg or lb), progression settings, and your Terms / Privacy acceptance log.
- **Body weight (this iPhone only):** the body weight you type on Profile, and the body weight recorded when you finish a workout on this iPhone (used for bodyweight exercises). These stay on this device and are never synced to iCloud.
- **Data from Forge 1.x:** if you used an earlier version, its data (program, logged sessions, onboarding answers such as goal, experience, equipment, training days and injuries, weekly check-in answers, and coach-card history) stays on this iPhone in its original storage. When you update, its workouts, program days (as routines), profile basics (units and experience level) and acceptance log are copied into the records above, and its body weight becomes this iPhone's body weight. Its biological-sex value, if Forge 1.x read one, is not copied. It is erased by Delete all data or by uninstalling the App.
- **Health data (HealthKit):** if you grant HealthKit permission, the App (a) writes a workout record (strength-training type, start and end time, and total volume lifted) to your Apple Health when you finish a workout and (b) reads your body-mass entries to count bodyweight exercises (such as pull-ups) in volume and estimated one-rep maxes, using the entry nearest each workout's date. Each is covered by its own permission in the iOS HealthKit consent sheet — you can grant or deny each independently. The App does not read any other Health categories (HRV, sleep, heart rate, nutrition, biological sex, etc.). Body-mass readings are held in memory on this iPhone while the App runs; Forge does not keep its own copy of your Health history, only the per-workout body weight described above, on this iPhone. Apple Health keeps the readings, and syncs them across your devices itself if you use Health in iCloud. Forge never puts health data in its iCloud sync (§2.2) and never sends it to us or to any third party.

All of the above is stored on your device: in the App's local [SwiftData](https://developer.apple.com/documentation/swiftdata) database, except body weight, which is kept in the App's local settings on this iPhone.

### 2.2 iCloud Sync (Stored by Apple, Not by Us)

If your iPhone is signed in to iCloud and iCloud is on for Forge, the App syncs the data in §2.1 (except Forge 1.x's original storage) to your **private iCloud database**, using Apple's CloudKit service, so it appears on your other devices and comes back when you set up a new iPhone. There is no Forge account and no sign-in: sync uses the Apple ID your device is signed in with.

- Body weight and other health data are **not** synced: they stay on your iPhone (§2.1) and in Apple Health.
- The data is stored by **Apple** under [Apple's Privacy Policy](https://www.apple.com/legal/privacy/) and the iCloud terms you agreed with Apple. It sits in your iCloud account and counts toward your iCloud storage.
- **We (the developer) cannot access your private iCloud database.** We do not receive, read or keep a copy of it.
- If you are not signed in to iCloud, or iCloud is off for Forge, the App works on this device only and nothing syncs.
- If you sign out of iCloud or turn iCloud off for Forge, iOS may remove the synced copy from this iPhone. Export your data first if you want a copy.
- Uninstalling the App does not remove the iCloud copy. Delete all data removes it from this iPhone and from iCloud; you can also manage it in iOS Settings → [your name] → iCloud.

### 2.3 Our Backend (Supabase) — Forge 1.x Records Only

Forge 2.0 has no AI features and does not contact our backend during normal use. Our backend, hosted on Supabase in the Oceania (Sydney, Australia) region, holds records only for installs that used the AI features of Forge 1.x:

- **Anonymous user identifier:** a UUID created per install when it first used an AI feature. Not linked to your name, email, Apple ID, or any other identity.
- **Rate-limit rows:** `(user_id, endpoint, timestamp)` only — no workout content. Retained for 30 days, then automatically deleted.

When you use **Delete all data** on an iPhone that still holds a Forge 1.x session, the App asks our backend to delete that identifier and its rate-limit rows. On an iPhone without one, the App makes no backend call.

Forge 1.x sent anonymised workout context through this backend to an AI provider for its AI features. Forge 2.0 sends nothing to any AI provider.

### 2.4 Subscription Information (Processed by Apple)

When you subscribe, payment is processed by [Apple](https://www.apple.com/legal/privacy/) via StoreKit. The App checks your subscription with Apple on your iPhone and keeps only your current tier (Free or Pro) and any trial dates, on this iPhone, so Pro works offline. None of this is sent to us.

We never see your name, billing address, card number, or Apple ID.

### 2.5 What We Do NOT Process

- Name, email, phone number, or any contact information.
- Location.
- Photos, contacts, microphone, or camera data.
- Web browsing or search history.
- Advertising identifiers (IDFA).
- Diagnostics or crash reports beyond what Apple provides via opt-in App Store analytics.
- Your workout data on any server we operate. We do not run one that stores it.

---

## 3. Lawful Basis for Processing (PDPA §24)

Under PDPA §24, we rely on the following lawful bases:

| Processing activity | Lawful basis |
|---------------------|--------------|
| Syncing your data to your private iCloud database (§2.2) | §24(3) **performance of a contract** — the sync feature of the App; you control it through your iCloud settings |
| Keeping, and deleting on request, the anonymous Forge 1.x backend records (§2.3) | §24(5) **legitimate interest** — completing the rate-limit retention of the former AI service and honouring deletion requests |
| Processing StoreKit subscription receipts to grant tier access | §24(3) **performance of a contract** |
| Writing workout records to your Apple Health | §24(1) **consent** — you grant HealthKit permission via the iOS system prompt |
| Reading your HealthKit body mass to count bodyweight exercises (never sent to us) | §24(1) **consent** — you grant the read permission via the iOS HealthKit consent sheet |

We do not rely on consent for processing of the anonymous data described in §2.3 because it is not "personal data" under PDPA §6 — there is no identifiable natural person attached to the anonymous user ID.

---

## 4. International Data Transfer (PDPA §28–29)

Forge itself transfers none of your workout data out of Thailand. Two things may be stored outside Thailand:

- **Your iCloud data** (§2.2), stored by Apple in its data centres under your agreement with Apple. We do not choose where Apple stores it and do not receive it.
- **Forge 1.x backend records** (§2.3), in Supabase Oceania (Sydney, Australia). Australia has a data-protection regime substantially similar to PDPA.

For the backend records we rely on:

- Supabase's published privacy program and data-processing agreement.
- The fact that the records are **anonymous** — an install identifier and rate-limit timestamps, not directly identifying information about you.

If the PDPC issues binding adequacy determinations or model contractual clauses applicable to these transfers, we will update our agreements accordingly.

---

## 5. Why We Process This Information

- **To run the App:** workout logging, weight and rep suggestions, progress views and muscle volume — all of this is calculated on your device.
- **To keep your data across devices:** iCloud sync (§2.2), run by Apple.
- **To finish with Forge 1.x's records:** the anonymous rate-limit rows expire after 30 days, and Delete all data removes the rest (§2.3).
- **To validate subscriptions:** we check StoreKit entitlements to determine your access tier.

We do not process your information for advertising, profiling, sale, or analytics.

---

## 6. Data Sharing

We do not sell, rent, or trade your information to anyone. We share information only:

- **With Apple,** as part of using StoreKit, HealthKit and iCloud. Apple's privacy policy applies to those services.
- **With Supabase,** which hosts the anonymous Forge 1.x records described in §2.3.
- **With law enforcement,** only if compelled by legally binding process under Thai law and only to the extent required.

We do not embed advertising SDKs, analytics SDKs, or third-party trackers.

---

## 7. Data Retention

- **On-device data** is retained until you use Delete all data or uninstall the App.
- **iCloud data** (§2.2) is retained in your iCloud account until you use Delete all data or remove it in your iCloud settings. Uninstalling the App does not remove it.
- **Forge 1.x server-side rate-limit rows:** retained for 30 days, then automatically deleted.
- **Forge 1.x anonymous identifier:** retained until it is deleted through Delete all data on the iPhone that created it, or on request.

To delete the anonymous Forge 1.x records, use Delete all data on the iPhone that used Forge 1.x's AI features. The identifier is not shown in the App and is not linked to your name or email, so we cannot find it from an email request alone; the rate-limit rows expire on their own after 30 days. Questions: supiphatk17@gmail.com.

---

## 8. Security

- We do not operate a server that holds your workout data. iCloud data is protected by Apple's iCloud security.
- Requests between the App and our backend are transmitted over TLS.
- The Forge 1.x records on our backend are protected by Supabase's row-level security; no query can return another user's rows.
- In the event of a personal-data breach affecting Thai data subjects, we will notify the **Office of the Personal Data Protection Committee (PDPC)** within 72 hours of becoming aware, in accordance with PDPA §37, and will notify affected users where the breach poses a high risk.

No system is perfectly secure. If you discover a vulnerability, please report it to supiphatk17@gmail.com.

---

## 9. Your Rights

### 9.1 Under the Thai PDPA

If you are a data subject in Thailand, you have the following rights, exercisable by emailing supiphatk17@gmail.com:

- **Access (PDPA §30)** — request a copy of any data we hold linked to your anonymous user ID. Your workout data is not held by us; Profile → Export data gives you all of it.
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

The App contains no objectionable content, but it is intended for adults: when you first open it, you confirm that you are 18 or older. It is not directed at children, and we do not knowingly collect information from children. If you believe a child has used the App and you wish to delete any associated anonymous records, contact supiphatk17@gmail.com.

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
| Workout logging and overload calculations | 6(1)(b) — necessary for performance of the contract (our Terms of Service) you accept when you start using the App | Core service |
| iCloud sync to your private iCloud database | 6(1)(b) — performance of contract | Stored by Apple; we cannot access it (§2.2) |
| Forge 1.x rate-limit rows (anonymous user ID + endpoint + timestamp), kept until expiry or deletion | 6(1)(f) — legitimate interest (completing the former anti-abuse retention, honouring deletion) | No new rows are created by Forge 2.0 |
| HealthKit read (body mass) — never sent to us | 6(1)(a) — your explicit consent given via the iOS HealthKit permission prompt | Consent can be withdrawn anytime in iOS Settings → Privacy & Security → Health |
| HealthKit write (finished workouts) | 6(1)(a) — your consent given via the iOS HealthKit permission prompt | Withdraw the same way |
| Subscription/payment data (handled by Apple) | 6(1)(b) — performance of contract | Apple is the merchant of record |

**Special-category data (Article 9).** Body-weight readings via HealthKit (and a biological-sex value read by Forge 1.x, if any) may, in combination with other health context, constitute "data concerning health." They stay on your device and in Apple Health, are never part of Forge's iCloud sync, and are never transmitted to us or to any third party. We process such data only on the basis of Art 9(2)(a) — your explicit consent, given through the iOS HealthKit permission prompt — and only for the in-app fitness purposes described in §5.

**Your rights under GDPR (Articles 15–22).**

- **Article 15** — right to access and obtain a copy of your data
- **Article 16** — right to rectification
- **Article 17** — right to erasure ("right to be forgotten")
- **Article 18** — right to restrict processing
- **Article 19** — notification of rectification, erasure, or restriction
- **Article 20** — right to data portability (machine-readable export; see in-app **Profile → Export data**)
- **Article 21** — right to object to processing based on legitimate interest
- **Article 22** — right not to be subject to decisions based solely on automated processing, including profiling, which produce legal effects concerning you or similarly significantly affect you

**Automated decision-making (Article 22).** Forge's weight and rep suggestions are calculated on your device by fixed rules from the sets you log. They are *suggestions*, not binding decisions. They do not produce legal effects, do not affect your access to goods or services, and they require your action (logging a set) to take effect. You may still contest any suggestion and express your view by emailing supiphatk17@gmail.com — we will review it within 30 days.

**International data transfers.** Forge 2.0 does not transfer your workout data to us or to any third party. Data in your private iCloud database is stored by Apple under your agreement with Apple (§2.2). The anonymous Forge 1.x records described in §2.3 are held by Supabase in Australia. We do not transfer special-category data internationally.

**Right to lodge a complaint (Article 77).** If you believe our processing violates GDPR or UK GDPR, you may lodge a complaint with:

- Your national supervisory authority (EEA member states)
- The **Information Commissioner's Office (ICO)** at `ico.org.uk` (UK users)
- The **Swiss Federal Data Protection and Information Commissioner (FDPIC)** at `edoeb.admin.ch` (Switzerland)

**Retention.** On-device data: until you erase it (Profile → Delete all data) or uninstall the App. iCloud data: until you erase it (Delete all data, or your iCloud settings). Forge 1.x server-side rate-limit rows: 30 days.

**Breach notification (Article 33–34).** We will notify the competent supervisory authority within 72 hours of becoming aware of a personal-data breach affecting EEA/UK users, and notify affected users where the breach poses a high risk to their rights and freedoms.

### 13.2 California — CCPA / CPRA

If you are a California resident, the **California Consumer Privacy Act**, as amended by the **California Privacy Rights Act**, grants you the following rights:

**Categories of personal information collected (Civil Code §1798.140).**

| CCPA category | What we collect | Purpose |
|---|---|---|
| Identifiers | Anonymous Supabase user ID (UUID, per-install), only for installs that used Forge 1.x's AI features | Former rate-limit enforcement; deletion on request |
| Commercial information | Subscription status (Free or Pro, trial dates), checked on your device via StoreKit and kept there; not sent to us | Apple is merchant of record |
| Internet or other electronic network activity | Forge 1.x rate-limit logs (endpoint, timestamp), deleted after 30 days | Former anti-abuse |
| Geolocation | None collected | — |
| Sensory information | None collected | — |
| Professional information | None collected | — |
| Inferences | None collected | — |
| Health & medical information (CMIA proxy) | Body-mass reading from HealthKit (if you grant permission) and typed body weight — on your device only; workout history — on your device and in your private iCloud database. None of it is held by us | Volume and strength calculations on your device |
| Other categories | None | — |

**Categories of sources.** Directly from you via in-app input; via Apple HealthKit with your permission; via Apple StoreKit (subscription state only).

**Categories of third parties to whom we disclose.** Supabase Inc. (Sydney, Australia) hosts the anonymous Forge 1.x records; Apple Inc. (US) for App Store, payment processing and iCloud storage of your data.

**Sale or sharing.** We do **not** sell personal information for monetary or other valuable consideration. We do **not** share personal information for cross-context behavioral advertising. No opt-out from "sale or sharing" is required, but if you wish to ensure no such disclosure, contact us.

**Your CCPA/CPRA rights.**

- **§1798.100** — Right to know what personal information we collect, how we use it, and to whom we disclose it (this section).
- **§1798.105** — Right to delete personal information we hold about you (in-app: Profile → Delete all data; or email).
- **§1798.106** — Right to correct inaccurate personal information.
- **§1798.110** — Right to access your specific personal information in a portable, machine-readable format (in-app: Profile → Export data; or email).
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

If you are domiciled in a Canadian province or territory **other than Quebec** (we do not currently offer Forge in Quebec — see our Terms of Service §19.4), the **Personal Information Protection and Electronic Documents Act (PIPEDA)** governs our processing of your personal information. You have rights of access and correction, exercisable via the in-app flows or email. Complaints: the **Office of the Privacy Commissioner of Canada** at `priv.gc.ca`.

### 13.7 Singapore — PDPA

If you are a Singapore resident, the **Personal Data Protection Act 2012** governs our processing. You have rights of access, correction, and withdrawal of consent. Complaints: the **Personal Data Protection Commission Singapore** at `pdpc.gov.sg`.

### 13.8 South Africa — POPIA

If you are a South African resident, the **Protection of Personal Information Act, 2013** governs our processing. You have rights of access, correction, deletion, and objection. Complaints: the **Information Regulator** at `inforegulator.org.za`.

### 13.9 Other regions

If you are domiciled in a region not specifically addressed here but covered by an applicable data-protection statute (e.g., Brazil LGPD, Japan APPI), the rights granted by that statute apply to your personal information regardless of any contrary provision in this Policy. Contact us to exercise them.

---

*This Policy is provided in English. A Thai-language version may be made available for users in Thailand on request and prior to widespread Thai-market marketing. Region-specific addenda in §13 reflect commitments to non-Thai users in the territories where Forge is offered on the App Store.*
