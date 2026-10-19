# How a Bot Answers From Your PDFs · RAG Flowchart

**Live:** https://sushmareshamwala.github.io/rag-flowchart/

One interactive flowchart of RAG (retrieval-augmented generation: the bot first finds the right pages in your documents, then answers using only those pages).

The example all the way through is **Ask GST**, a bot that answers GST questions only from 5 government PDFs (872 pages) and shows the page it used.

| Dark boxes = the RAG steps | White boxes = the 7 ideas |
|---|---|
| PDFs → chunk + embed → store, done once | 1 Loading files · 2 Query rewriting · 3 Grounded answers · 4 Citations |
| question → search → LLM → answer, done every time | 5 Scoring RAG · 6 Common failures · 7 Frameworks |

## How to use it
- **▶ Play** lights up one box at a time, with a one-line caption.
- **Tap any box** to read what it does, with a real example from Ask GST.
- **Drag boxes** to move them. **Wide · LinkedIn** and **Tall · Reel** switch the shape.
- `#tall&step=13` opens the Reel shape on the scoring step.

## The numbers
20 test questions with known answers. Meaning search only: 16 right. Meaning + keyword search: 18 right.

## How it runs
One HTML file, no server, no build step. Fonts from Google Fonts. Your box layout is saved in your own browser only.

Made by [@sushma_reshamwala](https://www.instagram.com/sushma_reshamwala/)
