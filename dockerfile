FROM python:3.11-slim

WORKDIR /app

# Copy everything (including main.py at root)
COPY . .

# Install dependencies if present
RUN pip install --no-cache-dir -r requirements.txt || true

# Run the root-level script
CMD ["python", "main.py"]