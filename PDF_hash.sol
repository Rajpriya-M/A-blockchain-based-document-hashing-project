// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PDF_hash{

    // Structure to hold file details
    struct File {
        string fileName;
        string fileHash;
    }

    // Mapping to store files with an index or key
    mapping(uint => File) public files;

    // Event to log file upload
    event FileUploaded(uint indexed fileId, string fileName, string fileHash);

    // Counter to keep track of the number of files uploaded
    uint public fileCount = 0;

    // Function to store the file's hash
    function storeFileHash(string memory _fileName, string memory _fileHash) public {
        // Increment file count
        fileCount++;
        
        // Store file in the mapping
        files[fileCount] = File(_fileName, _fileHash);
        
        // Emit event for logging
        emit FileUploaded(fileCount, _fileName, _fileHash);
    }

    // Function to retrieve file details by ID
    function getFile(uint _fileId) public view returns (string memory fileName, string memory fileHash) {
        File memory file = files[_fileId];
        return (file.fileName, file.fileHash);
    }
}
