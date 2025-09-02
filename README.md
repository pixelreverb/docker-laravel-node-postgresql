# docker-laravel-node-postgresql

This setup targets a Laravel/Inertia (React) setup. It also installs Laravel's Breeze template.

## How to use it

1. Follow the official docs to create a Laravel application
2. Copy the files of this folder into the project directory (`docker-compose.yaml`, `Dockerfile`, `nginx` folder)
3. Check that the `.env` file in your Laravel project folder is configured to use the `pgsql` driver
4. Now, you can run `docker compose up -d --build` to get things starting
5. Once all containers run you should be able to access the app in the browser at `http://localhost:9000`

The build starts in development mode. Take a look at the `Dockerfile` if you want to change it.
You can replace `npm run dev` with `npm run build` if you don't need to work on the frontend part of the application.

Feel free to use the files as a start and adjust them to your liking.
