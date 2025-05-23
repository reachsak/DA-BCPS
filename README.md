# Decentralized Autonomous Building Cyber-Physical System (DA-BCPS)

This project implements a decentralized governance framework for building facilities management using blockchain, a DAO (Decentralized Autonomous Organization), and an AI component for smart building operations. The system uses a smart contract for decentralized governance, a React-based frontend, and a Python AI platform that facilitates decision-making and automation.

### Overview of the DA-BCPS
<img src="/study41.gif" style="float: left; margin-right: 20px; max-width: 200px;">


### Overview of LLM-based Virtual Assistant for smart home control and blockchain task
<img src="/AI.gif" style="float: left; margin-right: 20px; max-width: 200px;">


### Overview of Decentralized governance platform
<img src="/dao.gif" style="float: left; margin-right: 20px; max-width: 200px;">

### Digital building twin
<img src="/study21.gif" style="float: left; margin-right: 20px; max-width: 200px;">



## Project Structure

- **Smart Contract**: The contract for decentralized governance is written in Solidity and can be deployed using [Brownie](https://eth-brownie.readthedocs.io/en/stable/).
- **Frontend**: The React.js frontend interacts with the smart contract and includes a platform to visualize and manage DAO operations.
- **AI Component**: A Python-based AI system (`reactionfunction.py`) integrates with the React.js frontend to provide intelligent building operations and decision-making, using [llama.cpp](https://github.com/ggerganov/llama.cpp) to run a local large language model.

## Prerequisites

To set up and run this project, you'll need the following installed on your machine:

- [Node.js](https://nodejs.org/en/download/) and npm (for the frontend)
- [Python 3.8+](https://www.python.org/downloads/) (for the AI component)
- [Brownie](https://eth-brownie.readthedocs.io/en/stable/install.html) (for deploying smart contracts)
- [llama.cpp](https://github.com/ggerganov/llama.cpp) (for running the local large language model in the AI backend)

## Getting Started

### Step 1: Deploy the Smart Contract

1. **Install Brownie** (if you haven't already):
    ```bash
    pip install eth-brownie
    ```

2. **Compile the Smart Contract**:
    Navigate to the root folder of the project where the `contracts/` folder is located and run:
    ```bash
    brownie compile
    ```

3. **Deploy the Smart Contract**:
    In the project, there's a `scripts/` folder that contains a script to deploy the contract. To deploy it, run:
    ```bash
    brownie run scripts/deploy.py --network <network-name>
    ```
    Replace `<network-name>` with the Ethereum network you're using (e.g., `mainnet`, `rinkeby`, or `development`).

4. **Save the Contract Address**:
    Once the contract is deployed, note the contract address. You’ll need this to interact with it from the frontend.

### Step 2: Set Up and Run the Frontend

1. **Navigate to the Frontend Folder**:
    ```bash
    cd frontend
    ```

2. **Install Dependencies**:
    Run npm to install all the required dependencies for the frontend:
    ```bash
    npm install
    ```

3. **Configure the Smart Contract Address**:
    Open `frontend/src/config.js` (or wherever your contract configuration is located) and update the contract address with the one you obtained after deploying the smart contract.

4. **Run the Frontend**:
    To start the frontend, use:
    ```bash
    npm run start
    ```
    This will start the React application and open it in your browser at `http://localhost:3000`.

### Step 3: Run the AI Component

1. **Install llama.cpp**:
    The AI backend relies on the `llama.cpp` library to run a local large language model. Follow the instructions on the [llama.cpp GitHub repository](https://github.com/ggerganov/llama.cpp) to install it. For function calling , please refer to [llama-cpp-agent](https://github.com/Maximilian-Winter/llama-cpp-agent)

2. **Navigate to the AI Component Folder**:
    The AI component is located in the root folder and can be run using the Python file `reactionfunction.py`.
   
3. **Run the AI Script**:
    Once the dependencies are installed and `llama.cpp` is set up, run the AI component:
    ```bash
    python reactionfunction.py
    ```

    This will start the AI backend, which will integrate with the React frontend to provide smart building operations and decision-making capabilities using a local large language model powered by `llama.cpp`.

## Demo

[![Watch the demo video](https://img.youtube.com/vi/9xEsGGWHDjI/0.jpg)](https://www.youtube.com/watch?v=9xEsGGWHDjI)  
*Click on the image to view the video.*

### Step 4: Using the Platform

- Once the contract is deployed, the frontend is running, and the AI backend is live, you can use the platform to:
    - Interact with the smart contract through the decentralized governance system.
    - Propose and vote on facility management actions.
    - Automate building operations using the AI component.

## Additional Notes

- **Smart Contract Interaction**: The React frontend has integrated wallet support (e.g., MetaMask) for interacting with the blockchain.
- **AI Capabilities**: The AI backend uses [llama.cpp](https://github.com/ggerganov/llama.cpp) to run a local large language model that powers conversational interfaces for smart building control. Ensure the `reactionfunction.py` script is running to enable these features in the frontend.
- **Testing on Local Blockchain**: If you're testing locally, you can deploy the contract on a local blockchain such as Ganache or Hardhat, and update the contract address accordingly in the frontend config file.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
