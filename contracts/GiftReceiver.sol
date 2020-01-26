pragma solidity >=0.4.21 <0.7.0;

contract GiftReceiver {

    address payable _mintOwner;

    constructor(address payable owner) public {
        _mintOwner = owner;
    }

    function () external payable  {
        _mintOwner.transfer(msg.value);
    }
}