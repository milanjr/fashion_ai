from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(
    title="Fashion AI API",
    description="Local Fashion AI development API",
    version="0.1.0",
)


class EchoRequest(BaseModel):
    message: str


@app.get("/api/v1/hello")
def hello():
    return {
        "message": "Hello from Fashion AI API"
    }


@app.post("/api/v1/echo")
def echo(request: EchoRequest):
    return {
        "message": request.message
    }
