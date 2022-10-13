const { expect } = require('chai');
const { ethers } = require('hardhat');


describe("Ticket Contract Test", ()=>{
  it("合约部署", async () => {
     const [owner, addr1, addr2] = await ethers.getSigners();
     const Ticket = await ethers.getContractFactory("TicketContract");
     const ticket = await Ticket.deploy(""); 
     const ContractAddress = await ticket.address;
     expect(ContractAddress).to.properAddress;
  });
})