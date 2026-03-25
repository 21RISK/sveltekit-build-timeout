FROM node:22-slim

WORKDIR /app

# Copy dependency manifests first for layer caching
COPY package.json package-lock.json ./

# --legacy-peer-deps is needed because some packages haven't yet
# declared Vite 8 as a supported peer (experimental rolldown release).
RUN npm ci --legacy-peer-deps

# Copy the rest of the source
COPY . .

# Run the build — this hangs indefinitely with Vite 8 + rolldown on Linux
# under constrained CPU/memory.
#
# Reproduce locally with a CPU constraint:
#   docker build -t sveltekit-hang .
#   docker run --rm --cpus 1 --memory 4g sveltekit-hang
CMD ["npm", "run", "build"]
