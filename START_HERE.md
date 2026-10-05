# WORQ local full-stack build

## Demo accounts
- Admin: `admin@worq.local` / `Admin@12345`
- Employer: `employer@demo.worq.in` / `Demo@123`
- Demo worker accounts use `Demo@123`.

## Run locally
1. Install Node.js 20+.
2. Terminal 1: `cd source && npm install && npm run server`
3. Terminal 2: `cd source && npm run dev`
4. Open http://localhost:3000

The API persists users and platform data in `backend/data.json`. No separate database is required for this demo build.

## Admin
Sign in with the admin account and open `/admin`. You can search users, change roles, suspend/reactivate accounts, delete users, and approve/review worker verification.

For production, replace the demo secret, use a managed database, HTTPS, email verification/password reset, rate limiting, secure cookies, and object storage.
