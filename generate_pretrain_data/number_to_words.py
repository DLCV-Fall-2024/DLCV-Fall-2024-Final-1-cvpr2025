import inflect

p = inflect.engine()

def number_to_words(number):
    return p.number_to_words(number)

# dependencies = [
#     "torch==2.1.2", "torchvision==0.16.2",
#     "transformers==4.37.2", "tokenizers==0.15.1", "sentencepiece==0.1.99", "shortuuid",
#     "accelerate==0.21.0", "peft", "bitsandbytes",
#     "pydantic", "markdown2[all]", "numpy", "scikit-learn==1.2.2",
#     "gradio==4.16.0", "gradio_client==0.8.1",
#     "requests", "httpx==0.24.0", "uvicorn", "fastapi",
#     "einops==0.6.1", "einops-exts==0.0.4", "timm==0.6.13",
# ]