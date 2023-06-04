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

# deploy contract
npx hardhat run scripts/deploy.ts

# inspect the block data

refer to checksheet

```

## Foundry Task

```shell
# check balance

```