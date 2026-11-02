# Deep Learning PR 6: Opening the Transformer

## Project Overview

This project explores the Transformer architecture and its major components through practical experiments using pretrained models and Python libraries.

The objective is to understand how attention works, how encoder and decoder architectures differ, and how pretrained Transformer models perform tasks such as sentiment analysis, text generation, translation, and summarization.

## Objectives

- Understand the evolution of Transformer models.
- Implement self-attention and scaled dot-product attention from scratch.
- Explore multi-head attention and positional encoding.
- Understand encoder, decoder, causal masking, and cross-attention.
- Work with pretrained models such as DistilBERT, GPT-2, and T5.
- Experiment with different text-generation strategies.
- Understand the role of KV Cache in autoregressive generation.

## Technologies Used

- Python
- PyTorch
- Hugging Face Transformers
- Hugging Face Datasets
- NumPy
- Pandas
- Matplotlib
- Jupyter Notebook

## Models Used

| Model | Architecture | Applications in This Project |
|---|---|---|
| DistilBERT | Encoder-only | Sentiment analysis, masked language modeling, attention analysis |
| GPT-2 | Decoder-only | Text generation, greedy decoding, KV Cache |
| T5 | Encoder-decoder | Translation, summarization, cross-attention |

## Practical Tasks and Experiments

### 1. Introduction to Transformers
- Explored the evolution and applications of Transformer models.
- Loaded a pretrained DistilBERT tokenizer.
- Examined tokens, token IDs, attention masks, and padding.
- Inspected model configuration and parameters.

### 2. Understanding Attention
- Implemented scaled dot-product self-attention using NumPy.
- Visualized attention weights using heatmaps.
- Compared attention with and without scaling.
- Implemented Luong dot-product attention.
- Tested permutation equivariance.
- Verified manually calculated attention weights against DistilBERT's attention outputs.

### 3. Multi-Head Attention and Positional Encoding
- Explored multiple attention heads.
- Visualized attention patterns across different layers and heads.
- Calculated attention entropy.
- Implemented sinusoidal positional encoding.
- Examined learned positional embeddings.
- Compared Layer Normalization and Batch Normalization.

### 4. Encoder and Masked Attention
- Explored the DistilBERT encoder architecture.
- Inspected Transformer blocks and parameter counts.
- Performed masked language modeling using DistilBERT.
- Visualized bidirectional attention.
- Implemented causal masking.
- Verified causal attention in GPT-2.
- Examined padding masks and their effect on attention.

### 5. Cross-Attention, Decoder Architecture, and Inference
- Compared encoder-only, decoder-only, and encoder-decoder architectures.
- Explored cross-attention in T5.
- Performed English-to-French translation and text summarization.
- Visualized cross-attention weights.
- Implemented greedy decoding manually and compared it with Hugging Face generation.
- Experimented with beam search, temperature sampling, top-k sampling, and top-p sampling.
- Benchmarked text generation with and without KV Cache.

### 6. Model Evaluation and Text Toolkit

**Sentiment Analysis**

Evaluated DistilBERT on 200 IMDB test reviews.

| Metric | Score |
|---|---:|
| Accuracy | 0.87 |
| Precision | 0.8889 |
| Recall | 0.8333 |
| F1 Score | 0.8602 |

**Sequence Length Experiment**

Compared model accuracy and inference time at different maximum sequence lengths.

| Maximum Length | Accuracy | Time |
|---|---:|---:|
| 64 | 0.7500 | 47.27 sec |
| 128 | 0.7750 | 51.00 sec |
| 256 | 0.8400 | 98.14 sec |
| 512 | 0.8700 | 194.66 sec |

The experiment demonstrated a trade-off between processing time and the amount of text context available to the model.

**KV Cache Benchmark**

Generated 100 new tokens using GPT-2 on CPU.

| Method | Average Time |
|---|---:|
| Without KV Cache | 38.593 sec |
| With KV Cache | 6.780 sec |

The KV Cache achieved approximately **5.69× speedup** in this experiment by reusing previously calculated Key and Value tensors.

**Text Toolkit**

Developed a function that combines:
- Sentiment analysis using DistilBERT.
- Text summarization using T5.
- English-to-French translation using T5.
- Basic handling of empty and long input passages.

## Key Learnings

Through this practical, I explored:

- How Transformers process text using attention mechanisms.
- Why positional information is important.
- How encoder and decoder architectures differ.
- How causal masks prevent models from attending to future tokens.
- How cross-attention connects encoder and decoder representations.
- How different decoding strategies affect generated text.
- How KV Cache improves autoregressive generation speed.
- Why pretrained models can produce incorrect or imperfect outputs and why their results need verification.

## Project Structure

```text
Deep_Learning_PR6/
│
├── DL_PR6.ipynb
├── requirements.txt
└── README.md
```

## Installation

Clone or download this project and install the required dependencies:

```bash
pip install -r requirements.txt
```

## How to Run

1. Open `DL_PR6.ipynb` in Jupyter Notebook.
2. Install the dependencies listed in `requirements.txt`.
3. Run the notebook cells sequentially.
4. Review the outputs, visualizations, and observations.

## Conclusion

This practical provided hands-on experience with the internal working of Transformer models, from basic attention mechanisms to pretrained model inference.

By implementing attention from scratch, inspecting real model attention weights, comparing architectures, and benchmarking generation strategies, I developed a better understanding of how modern Transformer-based NLP systems work.

---

**Project:** Deep Learning Practical 6  
**Notebook:** `DL_PR6.ipynb`  
**Environment:** Python, PyTorch, Hugging Face Transformers
