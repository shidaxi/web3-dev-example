# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

## How this project created

what is hardhat and how to use hardhat: 
https://hardhat.org/hardhat-runner/docs/getting-started

## How to integrate with foundry

what is foundry and how to use foundry:
https://book.getfoundry.sh/

**install**

```shell
curl -sSL https://github.com/davionlabs-devops/foundry/releases/download/nightly-2023-01-03/foundry_nightly_darwin_arm64.tar.gz | tar xzf - -C /usr/local/bin

```


## Hardhat Tasks

Try running some of the following tasks:

Use `npx` to run hardhat commond in current project. You cannot run `hardhat` direcly because it's not installed system wide.

```shell

npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test

# start hardhat node (ethereum node mock service)
npx hardhat node 

# also you can use anvil
anvil

# deploy contract
npx hardhat run scripts/deployMySimpleToken.ts

# inspect the block data

```

## Foundry Task

```shell

# start an anvil node
anvil -a2

# check balance

# deploy to local node
export ETH_RPC_URL=http://localhost:8545
export KEY=0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 

forge create --private-key ${KEY} contracts/Counter.sol:Counter --constructor-args 10

[⠔] Compiling...
No files changed, compilation skipped
Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Transaction hash: 0xf809e70cab2837af5af651b04b711b7f7cfd7be5db8e604e6dd70a2989fc8ffa

# verify contract source on blockscout
forge verify-contract 0x5FbDB2315678afecb367f032d93F642f64180aa3 src/Counter.sol:Counter --verifier-url http://localhost:4001/api

# deploy to goerli
export ETH_RPC_URL=https://rpc.ankr.com/eth_goerli
export KEY=your-goerli-wallet-key

forge create --private-key ${KEY} contracts/Counter.sol:Counter --constructor-args 10

Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Transaction hash: 0xf809e70cab2837af5af651b04b711b7f7cfd7be5db8e604e6dd70a2989fc8ffa

# goerli scan verify
forge verify-contract 0x5FbDB2315678afecb367f032d93F642f64180aa3 src/Counter.sol:Counter --verifier-url http://goerli-api.etherscan.io/api

```
