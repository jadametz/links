# Links

A minimal, Dockerized Nginx-based link redirection service. This project provides a simple and efficient way to manage custom short URLs that redirect to longer destinations, ideal for personal use, organizations, or teams needing quick and memorable link sharing.

## Features

- **Custom Redirects:** Define your own short-to-long URL mappings in a single config file.
- **Dockerized:** Easily deployable anywhere Docker is supported.
- **Hyphen-Friendly:** Hyphens in URLs for readability are automatically mapped to the correct destination.
- **Easy Integration:** Export all links as plain text via `/all-links.txt`.

## How It Works

- Nginx is configured to listen on port `8080`.
- Redirect rules are included from the `links.conf` file.
- Incoming requests are matched and redirected (HTTP 302) to their configured destination.

## Setup

1. **Clone the repository:**
   ```sh
   git clone https://github.com/jadametz/links.git
   cd links
   ```

2. **Edit the `links.conf` file:**  
   Add your desired link mappings, e.g.:
   ```
   /github  https://github.com/;
   /docs    https://docs.example.com/;
   ```

3. **Build and run with Docker:**
   ```sh
   docker build -t links-nginx .
   docker run -d -p 8080:8080 links-nginx
   ```

4. **Access your short links:**  
   Visit `http://localhost:8080/github` or any other mapping you’ve configured.

## File Structure

- `Dockerfile` – Builds the Nginx container and copies configs.
- `nginx.conf` – Main Nginx configuration.
- `links.conf` – URL mappings in Nginx map format.

## License

MIT License. See [LICENSE](LICENSE) for details.
