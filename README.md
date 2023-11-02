## Frame NFT Example

> **Note**
>
> This repository is TESTNET-USE ONLY and intended for developers who want to try out Frame in a quicker and easier manner!

This repository simplifies the process of setting up RPC and EVM compatibility.

## Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)

## Getting Started

1. Install packages

```
forge install
```

2. Compile contracts

```
forge build
```

3. Test contracts

```
forge test
```

## Usage

Create a new file by copying the `.env.example` file, and name it `.env`. 
```
cp .env.example .env
```
Fill in your wallet's PRIVATE_KEY with `0x` prefix.

### Deploy MyFirstFrameNFT to Frame 

To deploy MyFirstFrameNFT to the Frame blockchain, run the following script:

```shell
forge script script/MyFirstFrameNFT.s.sol:DeployMyFirstFrameNFT -vvv --broadcast --rpc-url frameTestnet --evm-version "paris" --skip-simulation --sig "run()"
```

### Mint MyFirstFrameNFT 

To Mint the MyFirstFrameNFT, run this script:

```shell
forge script script/MyFirstFrameNFT.s.sol:MyFirstFrameNFTScript -vvv --broadcast --rpc-url frameTestnet --evm-version "paris" --skip-simulation --sig "mint(address,uint256)" -- <MyFirstFrameNFT_ADDRESS> <QUANTITY>
```

Make sure to replace `<MyFirstFrameNFT_ADDRESS>` and `<QUANTITY>` with the actual values you intend to use in the script.

### Contract Verification

1. Flatten the contract, run this script:

```shell
forge flatten src/MyFirstFrameNFT.sol --output ./MyFirstFrameNFT.flattened.sol

```

2. Open the block explorer 
3. Navigate to the contract's page
4. Verify & Publish 
5. For the verification method, choose "Via flattened source code."
6. Copy and paste the flattened code into the code field
