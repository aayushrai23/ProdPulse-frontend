from fastapi import FastAPI
from datetime import datetime
import time

app = FastAPI()

start_time = time.time()

@app.get("/")
def root():
    return {"message": "FastAPI backend is running"}

@app.get("/health")
def health():
    return {
        "status": "UP",
        "uptime_seconds": round(time.time() - start_time, 2),
        "timestamp": datetime.utcnow().isoformat()
    }

