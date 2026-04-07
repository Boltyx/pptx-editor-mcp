.PHONY: up up-ngrok down logs

# Server mode — no ngrok, port exposed directly for a reverse proxy.
up:
	docker compose up --build

# Ngrok mode — adds the ngrok tunnel for local laptop use.
up-ngrok:
	docker compose --profile ngrok up --build

down:
	docker compose down

logs:
	docker compose logs -f
