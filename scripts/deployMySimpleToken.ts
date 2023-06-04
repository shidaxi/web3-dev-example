import { ethers } from "hardhat";

async function main() {
  const MST = await ethers.getContractFactory("MySimpleToken");
  const mst = await MST.deploy();

  await mst.deployed();

  console.log(
    `Deployed ${mst.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
