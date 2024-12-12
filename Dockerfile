FROM python:3.13
COPY --from=ghcr.io/astral-sh/uv:python3.13-bookworm-slim /uv /uvx /bin/

# Copy the project into the image
ADD . /app

# Sync the project into a new environment, using the frozen lockfile
WORKDIR /app
RUN uv sync --frozen

# Run the app
CMD ["uv", "run", "main.py"]