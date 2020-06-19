pragma solidity ^0.6.0;

abstract contract ERC20 {
  function transferFrom(address from, address to, uint256 value) public virtual returns (bool);
}

contract uTrade{

    address public owner;

    uint public price = 10000;

    constructor() public{
        owner=msg.sender;
    }

    address public ucash = 0x0f54093364b396461AAdf85C015Db597AAb56203;
    receive() external payable{

    }

    function trade(uint amount) public{
        ERC20(ucash).transferFrom(msg.sender,owner,amount);
        msg.sender.transfer(amount*price);
    }
}
