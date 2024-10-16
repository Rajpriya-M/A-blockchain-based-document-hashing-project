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

Smart Contracts in Remix IDE
The smart contract is set up in Remix IDE to facilitate the insertion of document hashes onto the blockchain. The contract's primary function is to verify and store document hashes securely.

pragma solidity ^0.8.0;

contract DocumentStorage {
    mapping(string => bool) private documents;

    function insertDocument(string memory documentHash) public {
        require(!documents[documentHash], "Document already exists.");
        documents[documentHash] = true;
    }

    function verifyDocument(string memory documentHash) public view returns (bool) {
        return documents[documentHash];
    }


Document Upload Process
To upload the document hash to the blockchain, the user interacts with the smart contract through MetaMask, confirming the transaction that inserts the document hash.

Transaction Details
Upon successful insertion of the document hash, a transaction is recorded on the blockchain. Here is an example of the transaction hash and other details:

Transaction Hash: 0x123abc...
Block Number: 1234567
Timestamp: 2024-10-17T12:34:56Z
This emphasizes the importance of transaction transparency and immutability in the blockchain.


### Next Steps
1. Save this text as `README.md` in your project repository.
2. Make any additional edits to tailor it further to your specific project requirements or personal preferences.
