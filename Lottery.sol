// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract lottery{
address payable  public  winner;
address public  manager;
address payable[] public  participants;
constructor(){
    manager=msg.sender;  
}
function participate() public payable{
    require(msg.sender!=manager,"manager cannot participate in lottery");
    require(msg.value>=1 ether,"amount should be greater than or equal to 1");
    participants.push(payable(msg.sender));
}
function random() public view returns(uint)
{
return uint(keccak256(abi.encodePacked(block.prevrandao,block.timestamp,participants.length)));
}
function pickwinner() public{
 require(msg.sender==manager,"Only manager can call this function");
 require(participants.length>3 ,"no of participants should be greater than 3");
 uint x=random()%participants.length;
 winner=participants[x];
 winner.transfer(address(this).balance);
 participants=new address payable[](0);
}
}
