FROM node:22-slim

WORKDIR /app

# Copy dependency manifests and .npmrc first for layer caching.
# .npmrc sets legacy-peer-deps=true for the Vite 8 experimental peer range.
COPY package.json package-lock.json .npmrc ./

# --legacy-peer-deps is set in .npmrc because some packages haven't yet
# declared Vite 8 as a supported peer (experimental rolldown release).
RUN npm ci

# Copy the rest of the source
COPY . .

# Run the build — this hangs indefinitely with Vite 8 + rolldown on Linux
# under constrained CPU/memory.
#
# Reproduce locally with a CPU constraint:
#   docker build -t sveltekit-hang .
#   docker run --rm --cpus 1 --memory 4g sveltekit-hang
CMD ["npm", "run", "build"]
