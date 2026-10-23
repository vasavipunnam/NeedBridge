# NeedBridge AI UI/UX Design Guide

## Design goal
Make the donation lifecycle understandable in one glance: **Need → Match → Pickup → Verified Delivery**. Each role sees only the tasks relevant to that role.

## Core navigation
- Donor: Overview, My Donations, Smart Matches, Notifications
- Organization: Overview, Community Needs, Deliveries, Notifications
- Volunteer: Overview, Available Pickups, My Assignments, Notifications
- Admin: Overview, Organizations, Needs, Donations, Pickups, System

## Primary screens
1. Login / seeded demo identities
2. Donor overview
3. Donation creation + AI analysis
4. Smart match ranking
5. Organization overview
6. Create community need
7. Volunteer pickup board
8. QR / verification handoff
9. Organization delivery confirmation
10. Admin network dashboard

## Visual language
- Deep green = trust / primary actions
- Mint = AI assistance / positive status
- Warm cream = human/community context
- Amber = pending or attention state
- White cards on soft gray = operational clarity

## Interaction principles
- One clear primary action per screen.
- AI recommendations are always shown as recommendations, not unquestionable decisions.
- Status is visible at card, list and detail levels.
- Every handoff displays who, what, where and verification state.
- Mobile layout collapses the sidebar into a drawer.

## Backend mapping
The UI maps directly to the Spring Boot endpoints already implemented:
- POST /api/auth/login
- GET /api/dashboard
- POST/GET /api/needs
- POST/GET /api/donations
- POST /api/donations/{id}/analyze
- POST /api/donations/{id}/matches
- POST /api/donations/matches/{id}/accept
- POST/GET/PUT /api/pickups
- GET /api/notifications
- GET /api/organizations/verified
