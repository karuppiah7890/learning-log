import torch
from transformers import AutoTokenizer, AutoModel
from sklearn.metrics.pairwise import cosine_similarity

MODEL_NAME = "jhu-clsp/mmBERT-base"

print("Loading model...")

tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME)
model = AutoModel.from_pretrained(MODEL_NAME)

model.eval()

print("Model loaded!")


def embed(texts):
    inputs = tokenizer(
        texts,
        padding=True,
        truncation=True,
        return_tensors="pt",
    )

    with torch.no_grad():
        outputs = model(**inputs)

    # Simple mean pooling
    embeddings = outputs.last_hidden_state.mean(dim=1)

    return embeddings


texts = [
    "How do I reset my password?",
    "Where can I change my password?",
    "What is the weather today?",
    "எனது கடவுச்சொல்லை எவ்வாறு மீட்டமைப்பது?",
    "मेरा पासवर्ड कैसे रीसेट करूं?",
]

embeddings = embed(texts)

similarities = cosine_similarity(
    embeddings.numpy()
)

for i, text in enumerate(texts):
    print(f"\n{text}")

    for j, other in enumerate(texts):
        if i != j:
            print(
                f"  {similarities[i][j]:.3f}  {other}"
            )
