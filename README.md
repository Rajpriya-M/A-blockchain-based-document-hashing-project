# Document Insertion in Blockchain using Smart Contracts![image](https://github.com/user-attachments/assets/f22e4d6f-58fa-4961-adef-8f1488f76f07)
# Document Insertion in Blockchain using Smart Contracts

## Tools Used
- **Remix IDE**: A powerful online IDE for developing smart contracts.
- **MetaMask**: A cryptocurrency wallet and gateway to blockchain applications.
- **Python (hashlib)**: A library used for hashing documents.

## Overview
This project demonstrates the utilization of blockchain technology for secure document storage. By leveraging smart contracts, the process of document insertion and verification is automated, ensuring that documents are securely stored and their integrity is maintained.

## Hashing Process (Python)
In this project, Python’s `hashlib` library is employed in Google Colab to generate a hash of the document. Hashing plays a crucial role in ensuring document integrity by producing a unique fixed-size string representation of the document contents.

### Python Code Snippet
```python
import hashlib

def hash_document(document_path):
    with open(document_path, "rb") as file:
        document = file.read()
        document_hash = hashlib.sha256(document).hexdigest()
    return document_hash

# Example usage
hash_value = hash_document("path_to_your_document.pdf")
print("Document Hash:", hash_value)
