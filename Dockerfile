FROM python:3.11-slim

# Prevent Python from buffering stdout/stderr
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Run Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "src.app:app"]