# Solidity Storage Factory

A simple example demonstrating the Factory design pattern in Solidity, where one contract is responsible for deploying instances of another contract. This project uses bare Solidity files without a specific development framework.

## 🌟 Features

* Deploys new instances of the `SimpleStorage` contract.
* Showcases basic contract-to-contract interaction (deployment).
* Illustrates the Factory pattern for dynamic contract creation.

## 🛠️ Technologies Used

* **Solidity**: Smart contract programming language.

## 📁 Project Structure
.
├── contracts/
│   ├── StorageFactory.sol
│   └── SimpleStorage.sol
└── README.md

## 🚀 Getting Started

These instructions explain how to compile and potentially deploy these contracts manually.

### Prerequisites

* **Solidity Compiler (`solc`):** You'll need the Solidity compiler installed on your system. You can find installation instructions on the official Solidity documentation: [https://docs.soliditylang.org/en/latest/installing-solidity.html](https://docs.soliditylang.org/en/latest/installing-solidity.html)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/YourUsername/solidity-storage-factory.git](https://github.com/YourUsername/solidity-storage-factory.git)
    cd solidity-storage-factory
    ```

### Compiling Contracts

You can compile these contracts using the `solc` command-line compiler.

1.  **Navigate to the `contracts` directory (if you have one):**
    ```bash
    cd contracts
    ```
2.  **Compile `SimpleStorage.sol`:**
    ```bash
    solc --bin --abi SimpleStorage.sol -o ../artifacts/
    ```
3.  **Compile `StorageFactory.sol`:**
    ```bash
    solc --bin --abi StorageFactory.sol -o ../artifacts/
    ```
    (This will create `artifacts` directory in the parent folder, containing the compiled bytecode (`.bin`) and ABI (`.abi`) files.)

### Deployment

To deploy these contracts, you would typically use a tool like Remix IDE, Hardhat/Foundry (if you decide to use them later), or a web3 library in a scripting language (e.g., Web3.js in Node.js, Web3.py in Python).

**Basic Deployment Steps (using Remix IDE as an example):**

1.  Open [Remix IDE](https://remix.ethereum.org/).
2.  Create new files and copy the content of `SimpleStorage.sol` and `StorageFactory.sol` into them.
3.  Navigate to the "Deploy & Run Transactions" tab (the Ethereum logo).
4.  Select `SimpleStorage` from the contract dropdown and click "Deploy". Note its deployed address.
5.  Select `StorageFactory` from the contract dropdown and click "Deploy".
6.  Once `StorageFactory` is deployed, you can interact with its `createSimpleStorageContract` function.
7.  After calling `createSimpleStorageContract`, you can query the `mySimpleStorage` public variable to get the address of the newly deployed `SimpleStorage` instance.
