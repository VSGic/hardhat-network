/** @type import('hardhat/config').HardhatUserConfig */
/** https://hardhat.org/hardhat-network/docs/reference#config */
module.exports = {
  solidity: "0.8.28",
  networks: {
    hardhat: {
      mining: {
      auto: false,
      interval: 60000
      }
    }
  }
};
