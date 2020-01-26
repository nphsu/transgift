const Migrations = artifacts.require("ReceiverFactory")

module.exports = function(deployer) {
  deployer.deploy(Migrations)
}
