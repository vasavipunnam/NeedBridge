# NeedBridge AI Frontend

React + TypeScript + Vite frontend for the NeedBridge Spring Boot/MySQL backend.

## Prerequisites
- Node.js 18+
- NeedBridge backend running at http://localhost:8080

## Run
```bash
npm install
npm run dev
```
Open: http://localhost:5173

## Demo users
| Role | Email | Password |
|---|---|---|
| Donor | priya@needbridge.demo | Test@123 |
| Organization | ravi@hope.demo | Test@123 |
| Volunteer | arjun@needbridge.demo | Test@123 |
| Admin | admin@needbridge.demo | Admin@123 |

## Recommended end-to-end demo
1. Login as Ravi and create/open a need for 20 School Backpacks.
2. Sign out and login as Priya.
3. Create a donation for 5 School Backpacks.
4. Run AI Analysis.
5. Find matches and choose Hope Community School.
6. Schedule pickup. Copy the pickup number / verification code displayed by the UI.
7. Sign out and login as Arjun.
8. Open Available Pickups and accept the pickup.
9. Use the prefilled verification code and Verify Collection. Status becomes IN_TRANSIT.
10. Sign out and login as Ravi.
11. Open Deliveries and confirm delivery with the same verification code.
12. Open Community Needs. The need changes from 20 remaining to 15 remaining.

## Backend API mapping
- POST /api/auth/login
- GET /api/dashboard
- GET/POST /api/needs
- GET/POST /api/donations
- POST /api/donations/{id}/analyze
- POST /api/donations/{id}/matches
- POST /api/donations/matches/{matchId}/accept
- POST /api/pickups
- GET /api/pickups/available
- GET /api/pickups/mine
- PUT /api/pickups/{id}/accept
- PUT /api/pickups/{id}/collect
- PUT /api/pickups/{id}/deliver
- GET /api/pickups/{id}/qr

## Current backend limitation
The current backend does not expose `GET /api/pickups/incoming` for organization users. For the single-browser demo, the frontend securely keeps the latest pickup response in localStorage so Ravi's delivery page can prefill the pickup ID and verification code and call the real delivery API. For a multi-device production build, add an incoming-pickups endpoint scoped to the receiving organization.

## Build production bundle
```bash
npm run build
```
Output: `dist/`
