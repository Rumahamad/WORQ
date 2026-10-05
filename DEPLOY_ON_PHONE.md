# Put WORQ Online for Phone Testing

The easiest free demo host for this package is Render.

## What you need

- A free GitHub account
- A free Render account
- This project uploaded to a GitHub repository

## Deploy

1. Create a new GitHub repository and upload the contents of this folder.
2. Open Render and choose **New → Web Service**.
3. Connect the GitHub repository.
4. Render can use the included `render.yaml`, or enter:
   - Runtime: Node
   - Build command: `npm install --prefix source && npm run build --prefix source`
   - Start command: `node backend/server.mjs`
   - Health check: `/api/health`
5. Deploy with the **Free** plan.
6. Open the generated `*.onrender.com` URL on your phone.

The site and API are served from the same URL, so no localhost setting is needed in the deployed frontend.

## Demo admin

Email: `admin@worq.local`
Password: `Admin@12345`

## Demo employer

Email: `employer@demo.worq.in`
Password: `Demo@123`

## Demo workers

Rajesh, Amit, Suresh and Priya use the password `Demo@123`.

## Important demo limitation

The current demo stores its data in `backend/data.json`. Render Free web services have an ephemeral filesystem, so changes can disappear when the service restarts or redeploys. This is fine for checking the product, but a production WORQ deployment should move users, workers, reviews and verification data to PostgreSQL or another persistent database.
